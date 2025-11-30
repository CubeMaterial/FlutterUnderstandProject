import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// TextButton는 텍스트만 나오는 버튼으로 외곽선이 없다.
// TextButton.icon은 텍스트와 아이콘만 나오는 버튼으로 외곽선이 없다.

class WidgetTextButton extends StatelessWidget {
  const WidgetTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_text_button.dart'),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {}, // 눌렀을 때 불러올 함수 선언
              style: TextButton.styleFrom(
                // 해당 버튼의 스타일을 결정
                minimumSize: Size(150, 40),
                backgroundColor: Colors.amber
              ),
              child: Text(
                '확인',
                style: TextStyle(
                  // 해당 텍스트의 스타일을 결정
                  fontSize: 20, // 폰트 사이즈
                  fontWeight: FontWeight.bold, // 굵기
                  color: Colors.black, // 색상
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () => {}, // 눌렀을 때 불러올 함수 선언
              icon: Icon(Icons.add), // 사용할 아이콘
              style: TextButton.styleFrom(
                minimumSize: Size(150, 40),
                backgroundColor: Colors.amber), // 버튼 스타일
              label: Text(
                // 입력할 텍스트와 스타일
                'TextButton',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
