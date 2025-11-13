import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_understand_project/model/lecture.dart';
import 'package:flutter_understand_project/view/stateful_page.dart';
import 'package:flutter_understand_project/view/stateless_page.dart';
import 'package:flutter_understand_project/view/widget_page.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Lecture> allLectureList = [];
  List<Lecture> widgetLectures = [];
  List<Lecture> statelessLectures = [];
  List<Lecture> statefulLectures = [];

  String? error;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadLectures();
  }

  Future<void> _loadLectures() async {
    try {
      final jsonStr = await rootBundle.loadString('assets/lectures.json');
      final List<dynamic> jsonList = jsonDecode(jsonStr);

      final lectures = jsonList
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList();

      setState(() {
        allLectureList = lectures;
        widgetLectures =
            lectures.where((e) => e.type == 'widget').toList();
        statelessLectures =
            lectures.where((e) => e.type == 'stateless').toList();
        statefulLectures =
            lectures.where((e) => e.type == 'stateful').toList();
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        error = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(icon: Icon(Icons.widgets), text: "Widget"),
          Tab(icon: Icon(Icons.widgets), text: "Stateless"),
          Tab(icon: Icon(Icons.widgets), text: "Stateful"),
        ],
        labelColor: Colors.blue,
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
        children: [
          WidgetPage(lectureList: widgetLectures),
          StatelessPage(lectureList: statelessLectures),
          StatefulPage(lectureList: statefulLectures),
        ],
      ),
    );
  }
}
