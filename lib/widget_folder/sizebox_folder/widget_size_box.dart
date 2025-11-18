import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// 사이즈 박스는 안 보이는 영역을 지정해주는 위젯으로 크기를 설정 할 수 있다.
// 강제로 영역 크기를 설정 할 수 있기에 center와 비슷한 느낌을 줌.
class WidgetSizeBox extends StatelessWidget {
  const WidgetSizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_size_box.dart'),
      body: Center(child: SizedBox(width: 20, height: 20, child: Text('data'))),
    );
  }
}
