import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// 스크롤. 
class WidgetSingleChildScrollView extends StatelessWidget {
  const WidgetSingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'SingleChildScrollView'),
      body: Center(
        child: SingleChildScrollView(
          //스크롤 뷰
          physics: BouncingScrollPhysics(), //바운스 효과
          scrollDirection: Axis.vertical, //수직 스크롤
          child: Column(
            children: [
              Image.asset('images/smile.png', width: 200, height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
