import 'package:flutter/material.dart';

class StatefulButton02 extends StatefulWidget {
  const StatefulButton02({super.key});

  @override
  State<StatefulButton02> createState() => _StatefulButton02State();
}

class _StatefulButton02State extends State<StatefulButton02> {
 // === Property ===
  late String buttonText; // 버튼 텍스트
  late Color buttonColor; // 버튼 색상
  late bool isState; // 버튼 상태

  @override
  void initState() {
    super.initState();
    isState = false;
    changeButtonState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change button color & text', 
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              isState = !isState;
              changeButtonState();
            }, 
            style: TextButton.styleFrom(
              backgroundColor: buttonColor,
              shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
              minimumSize: Size(150, 50)
            ), 
            child: Text(buttonText,
              style: TextStyle(color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              )
                )
            )
          ],
        ),
      ),
    );
  } // build

  // === Function ===
  void changeButtonState()
  {
    if(isState)
    {
      buttonText = "Flutter";
      buttonColor = Colors.amber;
    } 
    else
    {
      buttonText = "Hello";
      buttonColor = Colors.blue;
    }
    setState(() {
      
    });
  }
}