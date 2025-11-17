import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';
import 'package:flutter_understand_project/model/lecture.dart';
import 'package:get/get.dart';

class WidgetPage extends StatefulWidget {
  // === Properties ===
  final List<Lecture> _lectureList;

  const WidgetPage({super.key, required List<Lecture> lectureList})
    : _lectureList = lectureList;

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double expandedWidth = screenSize.width * 0.6;
    double buttonWidth = screenSize.width * 0.35;
    return Scaffold(
      appBar: CommonAppBar(title: "Widget Page"),
      body: Center(
        child: ListView.builder(
          itemCount: widget._lectureList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ExpansionTile(
                title: Text(
                  '${index + 1} : ${widget._lectureList[index].lectureName}',
                ),
                children: [
                  SizedBox(
                    height: 150,
                    width: screenSize.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                for (String path
                                    in widget._lectureList[index].images)
                                  Image.asset(path, height: 150),
                              ],
                            ),
                          ),
                        ),
                        VerticalDivider(color: Colors.black, thickness: 1),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                print(widget._lectureList[index].link);
                                Get.toNamed(widget._lectureList[index].link);
                                // Get.to(widget._lectureList[index].link);
                              },
                              style: ElevatedButton.styleFrom(
                                maximumSize: Size(buttonWidth, 50),
                              ),
                              child: Text('Move', overflow: TextOverflow.clip),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
