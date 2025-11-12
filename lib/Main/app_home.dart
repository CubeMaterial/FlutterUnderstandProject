import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(message: 'Main Home'),
      body: Center(
  child: Column(
    children: [
      ExpansionTile(
        title: Text('aaaa'),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 스크롤 영역은 Expanded로 가로폭 제약
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Images'),
                    // 가로 스크롤은 높이를 반드시 지정
                    SizedBox(
                      height: 120, // 이미지 높이에 맞춰 조정
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:  [
                            // 필요하면 width/height 지정 + fit 사용
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                            Image.asset('images/image_fitting/image_fitting.png', height: 120),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              const Text('aaaaaa'),
            ],
          ),
        ],
      ),
    ],
  ),
)

    );
  }
}