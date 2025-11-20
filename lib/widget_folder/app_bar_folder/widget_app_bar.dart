import 'package:flutter/material.dart';

// appbar는 scaffold의 appbar에 정의한다.
class WidgetAppBar extends StatelessWidget {
  const WidgetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mall"), // 이름
        centerTitle: true, // 가운데 정렬 여부
        backgroundColor: Colors.blueAccent, // 배경색
        foregroundColor: Colors.white, // 글자색
        leading: IconButton( // 좌측에 뜨는 위젯 정의. 정의되지 않을 경우 맨 첫 화면에선 없는 것이 디폴트값이며 두번째 이상일 경우 back버튼이 자동으로 설정된다.
          onPressed: () {},
          icon: Icon(Icons.email, color: Colors.white),
        ),
        actions: [ // 우측에 뜨는 위젯 정의. 정의 하지 않을 경우 아무것도 안 나오는 것이 디폴트 값.
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email_outlined, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
