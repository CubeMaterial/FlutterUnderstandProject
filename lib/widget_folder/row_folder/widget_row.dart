import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// 위젯들을 세로로 세울 수 있는 위젯. children 안에 1개 이상의 위젯들을 넣을 수 있다.
class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_row.dart'),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // Row의 자식 위젯들을 수평으로 중앙 정렬
        children: [Text("Text01"), Text("Text02")],
      ),
    );
  }
}
