import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// 텍스트 출력하는 위젯
class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_text.dart'),
      body: Center(
        child: Text(
          'Hello', // String으로 Text에 표현할 값
          style: TextStyle( // TextStyle를 생성한 후, style 프로퍼티에 넣기  
            fontSize: 24, // 폰트 크기
            fontWeight: FontWeight.bold, // 일반, 노말, 이탤릭체 등 옵션을 줄 수 있음
            color: Colors.black, // 글씨의 색상
          ), //텍스트 사이즈와 굵기, 컬러
        ),
      ),
    );
  }
}
