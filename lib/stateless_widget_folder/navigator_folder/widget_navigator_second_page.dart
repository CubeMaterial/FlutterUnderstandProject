import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

class WidgetNavigatorSecondPage extends StatefulWidget {
  const WidgetNavigatorSecondPage({super.key});

  @override
  State<WidgetNavigatorSecondPage> createState() => _NavigatorSecondPageState();
}

class _NavigatorSecondPageState extends State<WidgetNavigatorSecondPage> {
  late String str;

  @override
  void initState() {
    super.initState();
    str = "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'navigator_second_page.dart'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(str),
            ElevatedButton(onPressed: () {
              // Navigator.pop은 현재 화면의 메모리를 반환하고 이전 화면으로 되돌아간다.  
              Navigator.pop(context);
            }, child: Text('Back'))
          ],
        ),
      )
    );
  }
}