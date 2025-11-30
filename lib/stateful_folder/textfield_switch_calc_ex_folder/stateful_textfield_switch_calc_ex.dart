import 'package:flutter/material.dart';

class StatefulTextfieldSwitchCalcEx extends StatefulWidget {
  const StatefulTextfieldSwitchCalcEx({super.key});

  @override
  State<StatefulTextfieldSwitchCalcEx> createState() => _StatefulTextfieldSwitchCalcExState();
}

class _StatefulTextfieldSwitchCalcExState extends State<StatefulTextfieldSwitchCalcEx> {
  // === Property ===
  late List<TextEditingController> textEditingControllerList; // 텍스트 필드 컨트롤러 리스트
  late List<bool> switchValueList; // 스위치 값 리스트

  List<String> operatorWords = ["덧셈", "뺄셈", "곱셈", "나눗셈"];

  String notDeclare = "이 연산은 하지 않음";
  @override
  void initState() {
    super.initState();
    textEditingControllerList = List.generate(
      6,
      (_) => TextEditingController(),
    );
    switchValueList = List.filled(4, true);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: Text('간단한 계산기'),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          titleTextStyle: returnTextStyle(24),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              returnTextField(
                textEditingControllerList[0],
                '첫번째 값이니라',
                false,
                TextInputType.number,
              ),
              returnTextField(
                textEditingControllerList[1],
                '두번째 값이니라',
                false,
                TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  returnElevatedButton('계산하기', Colors.blueAccent, setResult),
                  returnElevatedButton('지우기', Colors.redAccent, reset),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < switchValueList.length; i++)
                    retunSwitch(i, '${operatorWords[i]} : '),
                ],
              ),
              for (int i = 0; i < switchValueList.length; i++)
                returnTextField(
                  textEditingControllerList[i + 2],
                  '${operatorWords[i]} 결과',
                ),
            ],
          ),
        ),
      ),
    );
  } // build
  // --- Functions ---

  void setResult() {
    if (textEditingControllerList[0].text.trim().isEmpty ||
        textEditingControllerList[1].text.trim().isEmpty) {
      // error
      showErrorSnackBar('안 들어간 입력 값이 있다.');
    } else if (double.tryParse(textEditingControllerList[0].text.trim()) ==
            null ||
        double.tryParse(textEditingControllerList[1].text.trim()) == null) {
      // error
      showAlertPopup('이노무 시키! 숫자를 넣으라니까!!');
    } else {
      double num1 = double.parse(textEditingControllerList[0].text);
      double num2 = double.parse(textEditingControllerList[1].text);

      textEditingControllerList[2].text = switchValueList[0]
          ? returnStringValue(num1 + num2)
          : notDeclare;
      textEditingControllerList[3].text = switchValueList[1]
          ? returnStringValue(num1 - num2)
          : notDeclare;
      textEditingControllerList[4].text = switchValueList[2]
          ? returnStringValue(num1 * num2)
          : notDeclare;
      textEditingControllerList[5].text = switchValueList[3] == false
          ? notDeclare
          : num2 != 0
          ? returnStringValue(num1 / num2)
          : "부모가 0이라 계산 불가";
    }
  }

  void reset() {
    for (int i = 0; i < switchValueList.length; i++) {
      switchValueList[i] = true;
    }

    for (TextEditingController data in textEditingControllerList) {
      data.text = "";
    }
    setState(() {});
  }

  void setDeclareCalc(TextEditingController controller) {
    controller.text = "이 연산은 하지 않음";
  }

  String returnStringValue(double num) {
    String str = "";
    if (num != num.toInt()) {
      str = num.toString();
    } else {
      str = (num.toInt()).toString();
    }
    return str;
  }

  Padding retunSwitch(int i, String msg) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          returnTextInSwitch(msg),
          SizedBox(
            width: 50,
            child: Transform.scale(
              scale: 1,
              child: Switch(
                value: switchValueList[i],
                onChanged: (value) {
                  switchValueList[i] = !switchValueList[i];
                  setState(() {});
                },
              ),
            ),
          ),
        ],
      ),
    );
  } // build

  // === Functions ===

  void showErrorSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg, style: returnTextStyle(16)),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  void showAlertPopup(String msg) {
    showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (c) {
        return AlertDialog(
          title: Text('경고'),
          content: Text(msg),
          shape: returnRoundedRectangleBorder(10),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(c).pop();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: returnRoundedRectangleBorder(10),
              ),
              child: Text('닫기', style: TextStyle(color: Colors.white)),
            ),
          ], // actions in AlertDialog
        );
      }, // showDialog()
    );
  }

  Text returnTextInSwitch(String msg) {
    return Text(
      msg,
      style: returnTextStyle(14, Colors.black, FontWeight.normal),
    );
  }

  Padding returnTextField(
    TextEditingController controller,
    String msg, [
    bool isReadOnly = true,
    TextInputType keyboardType = TextInputType.text,
  ]) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: msg,
          border: OutlineInputBorder(),
        ),
        readOnly: isReadOnly,
        keyboardType: keyboardType,
      ),
    );
  }

  Padding returnElevatedButton(String msg, Color backColor, Function method) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          method();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
          shape: returnRoundedRectangleBorder(10),
          minimumSize: Size(100, 40),
        ),
        child: Text(msg, style: returnTextStyle(16)),
      ),
    );
  }

  RoundedRectangleBorder returnRoundedRectangleBorder(double radius) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(radius),
    );
  }

  TextStyle returnTextStyle(
    double size, [
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.bold,
  ]) {
    return TextStyle(fontSize: size, fontWeight: fontWeight, color: color);
  }
}