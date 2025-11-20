import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';


// stateless
// floatingActionButton은 화면에서 떠 있는 버튼으로 body가 아닌 scaffold 안에 정의한다.
// body 안에 사용은 할 수 있으나 안에 있을 경우 스크롤을 하면 같이 움직이지만 body 밖에 정의를 하면 스크롤에 상관없이 고정 시킬 수 있다.
class WidgetFloatingActionButton extends StatelessWidget {
  const WidgetFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_floating_action_button.dart'),
      body: Center(child: Text('Test')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
