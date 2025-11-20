import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless 
// Transform은 위젯의 형태나 위치, 사이즈 등을 컨트롤하는 위젯으로 컨트롤할 위젯을 감싸서 사용한다.
class WidgetTransform extends StatelessWidget {
  const WidgetTransform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_transform.dart'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate( // 회전
              angle: 90,
              child: Text('Back')),
            Transform.scale( // 크기
              scale: 0.3,
              child: Text('Back')),
            Transform.translate( // 이동
              offset: Offset(0, 1),
              child: Text('Back')),
          ],
        ),
      )
    );
  }
}