import 'package:flutter/material.dart';

class WidgetTextField extends StatefulWidget {
  const WidgetTextField({super.key});

  @override
  State<WidgetTextField> createState() => _WidgetTextFieldState();
}

class _WidgetTextFieldState extends State<WidgetTextField> {
  // === Property ===

  late TextEditingController textEditingController; // 텍스트 필드 컨트롤러
  late String inputtingText; // 입력된 텍스트 저장 변수

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    inputtingText = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single TextField'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: '글자를 입력하슈',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  inputCheck();
                },
                child: Text('출력'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                  ),
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.black
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  textEditingController.text = "";
                },
                child: Text('삭제'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                  ),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white
                ),
              ),
            ],
          ),
        ],
      ),
    );
  } // build

  // === Functions ===
  void inputCheck() {
    if (textEditingController.text.trim().isEmpty) {
      _showSnackBar("글자를 입력 하여라", 3, Colors.redAccent);
      // errorSnackBar();
    } else {
      _showSnackBar(
        "네가 입력한 것은 '${textEditingController.text}'이다",
        1,
        Colors.blueAccent,
      );
    }
  }

  void _showSnackBar(String str, int duration, Color snackbarColor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(str),
        duration: Duration(seconds: duration),
        backgroundColor: snackbarColor,
      ),
    );
  }
}