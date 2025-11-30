import 'package:flutter/material.dart';

class StatefulTextFieldCalc extends StatefulWidget {
  const StatefulTextFieldCalc({super.key});

  @override
  State<StatefulTextFieldCalc> createState() => _StatefulTextFieldCalcState();
}

class _StatefulTextFieldCalcState extends State<StatefulTextFieldCalc> {
 // === Properties ===
  late TextEditingController inputFieldController1; // 첫번째 입력 필드 컨트롤러
  late TextEditingController inputFieldController2; // 두번째 입력 필드 컨트롤러
  late TextEditingController addController; // 덧셈 결과 필드 컨트롤러
  late TextEditingController subController; // 뺄셈 결과 필드 컨트롤러
  late TextEditingController mulController; // 곱셈 결과 필드 컨트롤러
  late TextEditingController divController; // 나눗셈 결과 필드 컨트롤러

  @override
  void initState() {
    super.initState();
    inputFieldController1 = TextEditingController();
    inputFieldController2 = TextEditingController();
    addController = TextEditingController();
    subController = TextEditingController();
    mulController = TextEditingController();
    divController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: Text('간단한 것 같지만 아닌거 같기도 한 계산기'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueGrey,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              returnTextField(
                inputFieldController1,
                "첫번째 값을 입력 하여라",
                false,
                TextInputType.number,
              ),
              returnTextField(
                inputFieldController2,
                "두번째 값을 입력 하여라",
                false,
                TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  returnElevatedButton('계산하기', Colors.blueAccent, setResult),
                  returnElevatedButton('지우기', Colors.redAccent, resetField),
                ],
              ),
              returnTextField(addController, '덧셈 결과이니라'),
              returnTextField(subController, '뺄셈 결과이니라'),
              returnTextField(mulController, '곱셈 결과이니라'),
              returnTextField(divController, '나눗셈 결과이니라'),
            ],
          ),
        ),
      ),
    );
  } // build

  // === Functions ===

  void setResult() {
    if (inputFieldController1.text.trim().isEmpty ||
        inputFieldController2.text.trim().isEmpty) {
      // 하나라도 입력이 안 된 경우
      showErrorSnackBar("숫자를 입력하여라");
    } else if (double.tryParse(inputFieldController1.text.trim()) == null ||
        double.tryParse(inputFieldController2.text.trim()) == null) {
      // 하나라도 숫자가 아닌 다른 값이 들어왔을 경우
      showErrorSnackBar("숫자가 아닌 값이 들어왔구나");
    } else {
      // 두 값 모두 숫자일 경우
      double num1 = double.parse(inputFieldController1.text.trim());
      double num2 = double.parse(inputFieldController2.text.trim());

      addController.text = returnValue(num1 + num2);
      subController.text = returnValue(num1 - num2);
      mulController.text = returnValue(num1 * num2);
      if (num2 != 0) {
        divController.text = returnValue(num1 / num2);
      } else {
        divController.text = "계산 불가";
      }
    }
  }

  void showErrorSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  void resetField() {
    inputFieldController1.text = "";
    inputFieldController2.text = "";
    addController.text = "";
    subController.text = "";
    mulController.text = "";
    divController.text = "";
  }

  String returnValue(double num) {
    String str = "";
    if (num != num.toInt()) {
      str = num.toString();
    } else {
      str = (num.toInt()).toString();
    }
    return str;
  }

  Padding returnElevatedButton(String msg, Color backColor, Function action) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          action();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
          minimumSize: Size(100, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(msg, style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }

  Padding returnTextField(
    TextEditingController controller,
    String msg, [
    bool isReadOnly = true,
    TextInputType textInputType = TextInputType.text,
  ]) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: msg,
        ),
        keyboardType: textInputType,
        readOnly: isReadOnly,
      ),
    );
  }
}