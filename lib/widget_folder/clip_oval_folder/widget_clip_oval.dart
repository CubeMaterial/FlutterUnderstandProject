import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless 
// stateless

class WidgetClipOval extends StatelessWidget {
  const WidgetClipOval({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_clip_oval.dart'),
      body: ClipOval(
        child: Image.asset(
          'images/common/pikachu-1.jpg', // 이미지 설정
          width: 100, // 이미지 너비 설정
          height: 100, // 이미지 높이 설정
          fit: BoxFit.cover, // 이미지 맞춤 설정
        ),
      ),
    );
  }
}
