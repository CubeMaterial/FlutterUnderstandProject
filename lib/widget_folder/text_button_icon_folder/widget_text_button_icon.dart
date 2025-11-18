import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// TextButton.icon은 텍스트와 아이콘만 나오는 버튼으로 외곽선이 없다.
class WidgetTextButtonIcon extends StatelessWidget {
  const WidgetTextButtonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_text_button_icon.dart'),
      body: Center(
        child: TextButton.icon(
          onPressed: () => {}, // 눌렀을 때 불러올 함수 선언
          icon: Icon(Icons.add), // 사용할 아이콘 
          style: TextButton.styleFrom(minimumSize: Size(150, 40)), // 버튼 스타일
          label: Text( // 입력할 텍스트와 스타일
            'TextButton',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
