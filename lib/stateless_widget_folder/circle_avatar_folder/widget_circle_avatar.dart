import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless 
// 이미지를 원 안에 집어 넣는 위젯 
class WidgetCircleAvatar extends StatelessWidget {
  const WidgetCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_circle_avatar.dart'),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('images/common/pikachu-1.jpg'), // 이미지 설정
          radius: 100, // 원의 반지름 설정
        ),
      ),
    );
  }
}
