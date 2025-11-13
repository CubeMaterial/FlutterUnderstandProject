import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';
import 'package:flutter_understand_project/model/lecture.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  late List<Lecture> lectureList;

  late Future userList;
  //   String json = '''

  // {

  //     "lectureName": "lectureName",
  //     "images": [
  //         "images/image_fitting/image_fitting.png",
  //         "images/image_fitting/image_fitting.png",
  //         "images/image_fitting/image_fitting.png",
  //         "images/image_fitting/image_fitting.png",
  //         "images/image_fitting/image_fitting.png",
  //         "images/image_fitting/image_fitting.png"
  //     ],
  //     "link": "/First"
  // }

  // ''';

  @override
  void initState() {
    super.initState();
    lectureList = [
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
      Lecture(
        lectureName: 'lectureName',
        images: [
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
          'images/image_fitting/image_fitting.png',
        ],
        link: '/First',
      ),
    ];

    userList = loadJson();

    // Map<String,dynamic> jsonData = jsonDecode(userList);
    // print(jsonData['link']);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double expandedWidth = screenSize.width * 0.6;
    double buttonWidth = screenSize.width * 0.35;
    return Scaffold(
      appBar: CommonAppBar(message: 'Main Home'),

      body: Center(
        child: FutureBuilder(
          future: userList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: lectureList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ExpansionTile(
                      title: Text(
                        '${index + 1} : ${lectureList[index].lectureName}',
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
                                          in lectureList[index].images)
                                        Image.asset(path, height: 150),
                                    ],
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      maximumSize: Size(buttonWidth, 50),
                                    ),
                                    child: Text(
                                      'Move',
                                      overflow: TextOverflow.clip,
                                    ),
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
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text("Error"));
            } else {
              return const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              );
            }
          },
        ),
      ),
    );
  } // build

  // === Functions ===

  void initLecture() {
    // Lecture.fromJson()
  }

  static Future loadJson() async {
    final String response = await rootBundle.loadString("lecture.json");
    final data = await json.decode(response);
    // print(data.)
    return data;
  }
}
