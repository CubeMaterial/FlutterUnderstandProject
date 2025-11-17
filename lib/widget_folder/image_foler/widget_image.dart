import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// 이미지 파일 로드
class WidgetImage extends StatelessWidget {
  const WidgetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "widget_image.dart"),
      body: Center(
        child: Image.asset(
          'images/common/smile.png', // 이미지의 경로
          width: 100, // 이미지의 넓이
          height: 100, // 이미지의 높이
        ),
      ),
    );
  }
}
