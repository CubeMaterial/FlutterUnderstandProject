import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// 스크롤. 
class WidgetSingleChildScrollView extends StatelessWidget {
  const WidgetSingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_single_child_scroll_view.dart', fontSize: 18.0),
      body: Center(
        child: SingleChildScrollView(
          //스크롤 뷰
          physics: BouncingScrollPhysics(), //바운스 효과
          scrollDirection: Axis.vertical, //수직 스크롤
          child: Column(
            children: [
              Image.asset('images/common/smile.png', width: 200, height: 200),
              Image.asset('images/common/smile.png', width: 200, height: 200),
              Image.asset('images/common/smile.png', width: 200, height: 200),
              Image.asset('images/common/smile.png', width: 200, height: 200),
              Image.asset('images/common/smile.png', width: 200, height: 200),
              Image.asset('images/common/smile.png', width: 200, height: 200),
              Image.asset('images/common/smile.png', width: 200, height: 200),
              Image.asset('images/common/smile.png', width: 200, height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
