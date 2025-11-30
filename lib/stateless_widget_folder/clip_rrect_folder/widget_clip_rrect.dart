import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// 이미지의 모서리를 둥글게 잘라서 표현하는 위젯
class WidgetClipRrect extends StatelessWidget {
  const WidgetClipRrect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_clip_rrect.dart'),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20), //모서리 둥글게
          child: Image.asset(
            "images/common/pikachu-1.jpg",
            height: 300,
            //opacity: AlwaysStoppedAnimation(0.5),//투명도
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
