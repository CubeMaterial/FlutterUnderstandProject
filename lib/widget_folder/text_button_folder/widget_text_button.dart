import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// TextButton는 텍스트만 나오는 버튼으로 외곽선이 없다.
class WidgetTextButton extends StatelessWidget {
  const WidgetTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_text_button.dart'),

      body: Center(
        child: TextButton(
          onPressed: () {}, // 눌렀을 때 불러올 함수 선언
          style: TextButton.styleFrom( // 해당 버튼의 스타일을 결정
            minimumSize: Size(150, 40,
            )),
          child: Text( 
            '확인',
            style: TextStyle( // 해당 텍스트의 스타일을 결정
              fontSize: 20,   // 폰트 사이즈
              fontWeight: FontWeight.bold, // 굵기
              color: Colors.white, // 색상
            ),
          ),
        ),
      ),
    );
  }
}
