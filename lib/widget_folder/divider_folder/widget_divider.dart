import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// 구분선 
class WidgetDivider extends StatelessWidget {
  const WidgetDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_divider.dart'),

      body: Center(
        child: Column(
          children: [

            Divider(
              color: Color.fromARGB(255, 0, 0, 0), // 구분선 색상
              thickness: 1, // 구분선 두께
              indent: 0, // 구분선 왼쪽 여백
              endIndent: 0, // 구분선 오른쪽 여백
            ),
          ],
        ),
      ),
    );
  }
}
