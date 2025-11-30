import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// ElevatedButton은 외곽선이 있는 버튼이다.
// ElevatedButton.icon은 외곽선, 텍스트와 아이콘이 나옴.
class WidgetElevatedButton extends StatelessWidget {
  const WidgetElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_elevated_button.dart'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {}, // 눌렀을 때 불러올 함수 선언
              style: ElevatedButton.styleFrom(
                // 버튼 스타일 설정
                minimumSize: Size(100, 60), // 최소 크기
                backgroundColor: Colors.blue, // 버튼 색상
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 버튼의 모양
                ),
              ),
              child: Text(
                // 버튼에 들어가는 글씨와 스타일
                '확인',
                style: TextStyle(
                  fontSize: 20, // 폰트 크기
                  fontWeight: FontWeight.bold, // 폰트 굵기
                  color: Colors.white, // 색상
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.home_filled, color: Colors.black),
              label: Text(
                'ElevatedButton.icon',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 40),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
