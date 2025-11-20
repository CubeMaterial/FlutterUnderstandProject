import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// 미리 지정된 아이콘을 불러온다.
class WidgetIcon extends StatelessWidget {
  const WidgetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_icon.dart'),
      body: Center(
        child: Icon(
          // 아이콘 위젯
          Icons.check_circle_outline, // 별 아이콘
          color: Colors.red, // 아이콘 색상
          size: 20, // 아이콘 크기
        ),
      ),
    );
  }
}
