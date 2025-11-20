import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// 외곽선 버튼
class WidgetOutlinedButton extends StatelessWidget {
  const WidgetOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_oulined_button.dart'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200, 40), //버튼의 최소사이즈 설정
                foregroundColor: Colors.green,
                side: BorderSide(color: Colors.black, width: 2.0),
              ),
              child: Text('OutlinedButton'),
            ),

            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.home_filled, color: Colors.black),
              label: Text(
                'OutlinedButton.icon',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(150, 40),
                side: BorderSide(color: Colors.black, width: 2.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
