import 'package:flutter/material.dart';

class StatefulButton01 extends StatefulWidget {
  const StatefulButton01({super.key});

  @override
  State<StatefulButton01> createState() => _StatefulButton01State();
}

class _StatefulButton01State extends State<StatefulButton01> {
 // === Property ===
  late String changeableTextState; //버튼 안에 들어가는 텍스트1
  late String changeableButtonTextState; // 버튼 안에 들어가는 텍스트2
  late Color textColor; // 텍스트 색상
  late Color appBarColor; // 앱바 색상
  late Color bodyColor; // 바디 색상
  late bool isButtonState; // 버튼 상태
  late double fontSize; // 폰트 크기

  @override
  void initState() {
    super.initState();
    isButtonState = false;
    fontSize = 10;
    setButtonState();
  }
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        title: Text(
          'Flutter Life Cycle'),
          backgroundColor: appBarColor,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  isButtonState = !isButtonState;
                  setButtonState();
                  // setButtonState();
                }, child: Text('$changeableButtonTextState')
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('버튼 상태 : $changeableTextState', 
                  style: TextStyle(color: textColor, fontSize: fontSize),)
                ],
              )
            ],
          ),
        ),
    );
  } // build()

  // === Functions ===
  void setButtonState()
  {
    if(isButtonState) {
      bodyColor = Colors.amberAccent;
      appBarColor = Colors.redAccent;
      textColor = Colors.redAccent;
      changeableTextState = "ON";
      changeableButtonTextState = "Press the Button";
    } else {
      bodyColor = Colors.white;
      appBarColor = Colors.blueGrey;
      textColor = Colors.blueGrey;
      changeableTextState = "OFF";
      changeableButtonTextState = "버튼을 클릭하세요";
    }
    if(fontSize <= 60)
      fontSize+= 0.2;
    setState(() {});
  }
}