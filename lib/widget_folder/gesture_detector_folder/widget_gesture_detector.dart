import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// GestureDetector는 이벤트를 못 받는 위젯, icon이나 text와 같은,에 이벤트를 받을 수 있게 한다. 사용할 위젯을 감싸서 사용
class WidgetGestureDetector extends StatelessWidget {
  const WidgetGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_gesture_detector.dart',),
      body: Center(

        child: GestureDetector(
          onTap: () {
            print('clicked');
          },
          child: Text('Clicked')),
      ),
    );
  }
}