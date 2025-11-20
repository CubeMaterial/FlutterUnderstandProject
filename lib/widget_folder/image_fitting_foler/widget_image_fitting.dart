import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// 이미지의 Fit 설정
class WidgetImageFitting extends StatelessWidget {
  const WidgetImageFitting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "widget_image.dart"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Image.asset(
              'images/common/smile.png', // 이미지의 경로
              width: 100, // 이미지의 넓이
              height: 100, // 이미지의 높이
              fit: BoxFit.contain // 기본값. 크기에 맞게 최대한 크게 사이즈가 변경됨
            ),
            Image.asset(
              'images/common/smile.png', // 이미지의 경로
              width: 100, // 이미지의 넓이
              height: 100, // 이미지의 높이
              fit: BoxFit.cover // 지정한 크기에 맞게 이미지가 잘림
            ),
            Image.asset(
              'images/common/smile.png', // 이미지의 경로
              width: 100, // 이미지의 넓이
              height: 100, // 이미지의 높이
              fit: BoxFit.fill // 지정한 크기에 맞게 이미지의 사이즈가 변경됨 
            ),
            Image.asset(
              'images/common/smile.png', // 이미지의 경로
              width: 100, // 이미지의 넓이
              fit: BoxFit.fitWidth // 이미지의 크기를 넓이에 맞춰서 조절함
            ),
            Image.asset(
              'images/common/smile.png', // 이미지의 경로
              height: 100, // 이미지의 높이
              fit: BoxFit.fitHeight // 이미지의 크기를 높이에 맞춰서 조절함
            )
          ],
        ),
      ),
    );
  }
}