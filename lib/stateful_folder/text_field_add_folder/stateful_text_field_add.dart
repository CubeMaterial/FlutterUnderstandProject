import 'package:flutter/material.dart';

class StatefulTextFieldAdd extends StatefulWidget {
  const StatefulTextFieldAdd({super.key});

  @override
  State<StatefulTextFieldAdd> createState() => _StatefulTextFieldAddState();
}

class _StatefulTextFieldAddState extends State<StatefulTextFieldAdd> {
  // === Property ===
  late TextEditingController textEditingController1; // 첫번째 텍스트 필드 컨트롤러
  late TextEditingController textEditingController2; // 두번째 텍스트 필드 컨트롤러
  late String showonText;

  @override
  void initState() {
    super.initState();
    textEditingController1 = TextEditingController();
    textEditingController2 = TextEditingController();
    showonText = "";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        
        appBar: AppBar(
          title: Text(
            "덧셈 구하기",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          spacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,20,8,8),
              child: TextField(
                controller: textEditingController1,
                decoration: InputDecoration(
                  labelText: '첫번째 숫자를 입력하라',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController2,
                decoration: InputDecoration(
                  labelText: '두번째 숫자를 입력하라',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  showCalcResult();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "덧셈",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                showonText,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } // build

  // === Functions ===

  void showCalcResult() {
    if (textEditingController1.text.trim().isEmpty ||
        textEditingController2.text.trim().isEmpty) {
      // 둘 중 하나라도 입력 안 했을 경우
      showonText = "";
      showErrorSnackBar('숫자를 입력 하여라');
    } else if (int.tryParse(textEditingController1.text.trim()) == null ||
        int.tryParse(textEditingController2.text.trim()) == null) {
      showonText = "";
      showErrorSnackBar('숫자로 입력하시오');
    } else {
      // 전부 다 입력했을 경우
      showonText =
          "입력한 두 숫자의 합은 ${int.parse(textEditingController1.text.trim()) + 
          int.parse(textEditingController2.text.trim())}입니다.";
    }
    setState(() {});
  }

  void showErrorSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.redAccent
      ),
    );
  }
}