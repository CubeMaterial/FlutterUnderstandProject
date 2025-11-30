import 'package:flutter/material.dart';

class WidgetSwitch extends StatefulWidget {
  const WidgetSwitch({super.key});

  @override
  State<WidgetSwitch> createState() => _WidgetSwitchState();
}

class _WidgetSwitchState extends State<WidgetSwitch> {
 // ----- Property -----
  late bool isChangableValue; // 스위치 변수
  late String imagePath;  // 이미지 경로 변수
  late String appBarText; // 앱바 텍스트 변수

  @override
  void initState() {
    super.initState();
    isChangableValue = false;
    checkScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              child : Image.asset(imagePath,
              height: 300,
              fit: BoxFit.fitHeight,
              ),
            ),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('스마일'),
                Switch(value: isChangableValue, onChanged: (value) {
                  isChangableValue = value;
                  checkScreen();
                },),
                Text('피카츄'),
              ],
            ),
          ],
        ),
      ),
    );
  } // build

  // ----- Functions -----
  void checkScreen()
  {
    appBarText = isChangableValue? "피카츄":"스마일";
    imagePath = isChangableValue? "images/common/pikachu-1.jpg": "images/common/smile.png";
    setState((){});
  }
}