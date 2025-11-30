import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_understand_project/model/lecture.dart';
import 'package:flutter_understand_project/view/stateful_page.dart';
import 'package:flutter_understand_project/view/stateful_widget_page.dart';
import 'package:flutter_understand_project/view/stateless_page.dart';
import 'package:flutter_understand_project/view/stateless_widget_page.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Lecture> allLectureList = [];
  List<Lecture> statelessWidgetLectures = [];
  List<Lecture> statefulWidgetLectures = [];
  List<Lecture> statelessLectures = [];
  List<Lecture> statefulLectures = [];

  String? error;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _loadLectures();
  }

  Future<void> _loadLectures() async {
    try {
      final jsonStr = await rootBundle.loadString('lectures.json');
      final List<dynamic> jsonList = jsonDecode(jsonStr);

      final lectures = jsonList
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList();

      setState(() {
        allLectureList = lectures;
        statelessWidgetLectures =
            lectures.where((e) => e.type == 'StatelessWidget').toList();
        statefulWidgetLectures =
            lectures.where((e) => e.type == 'StatefulWidget').toList();
        statelessLectures =
            lectures.where((e) => e.type == 'Stateless').toList();
        statefulLectures =
            lectures.where((e) => e.type == 'Stateful').toList();
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        error = e.toString();
        isLoading = false;
      });
    }

    print('StatelessWidget Lectures: ${statelessWidgetLectures.length}');
    print('StatefulWidget Lectures: ${statefulWidgetLectures.length}');
    print('Stateless Lectures: ${statelessLectures.length}');
    print('Stateful Lectures: ${statefulLectures.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(icon: Icon(Icons.widgets), text: "Stateless Widget"),
          Tab(icon: Icon(Icons.widgets), text: "Stateful Widget"),
          Tab(icon: Icon(Icons.widgets), text: "Stateless"),
          Tab(icon: Icon(Icons.widgets), text: "Stateful"),
        ],
        labelColor: Colors.blue,
        indicatorColor: Colors.blue,
        indicatorWeight: 2,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  Widget _buildBody() {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    if (error != null) {
      return Center(child: Text(error!));
    }

    return Center(
      child: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          StatelessWidgetPage(lectureList: statelessWidgetLectures),
          StatefulWidgetPage(lectureList: statefulWidgetLectures),
          StatelessPage(lectureList: statelessLectures),
          StatefulPage(lectureList: statefulLectures),
        ],
      ),
    );
  }
}
