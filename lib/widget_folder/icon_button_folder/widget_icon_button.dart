import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// 미리 지정된 아이콘을 불러온다. 
// Icon과 달리 IconButton은 버튼의 일종으로 onPressed에 함수를 집어 넣어 기능을 정의 할 수 있다.
class WidgetIconButton extends StatelessWidget {
  const WidgetIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_icon_button.dart'),
      body: Center(
        child: IconButton(
          onPressed: () {}, // 함수
          icon: Icon(Icons.home, color: Colors.black, size: 20),
        ),
      ),
    );
  }
}
