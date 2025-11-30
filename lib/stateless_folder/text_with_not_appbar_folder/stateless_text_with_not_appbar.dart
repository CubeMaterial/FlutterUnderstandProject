import 'package:flutter/material.dart';

class StatelessTextWithNotAppbar extends StatelessWidget {
  const StatelessTextWithNotAppbar({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'James', // 텍스트
                style:
                    TextStyle // 텍스트 스타일
                    (
                      fontSize: 20, // 폰트 사이즈
                      fontWeight: FontWeight.bold, // 폰트 굵기
                      color: Colors.blueAccent, // 글씨 색상
                      letterSpacing: 5, // 자간
                    ),
              ),
              Text(
                '제임스',
                style: TextStyle(fontSize: 16, color: Colors.redAccent),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Cathy'), Text('캐시')],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Kenny'), Text('케니')],
          ),
        ],
      ),
    );
  }
}