import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';
import 'package:flutter_understand_project/stateless_widget_folder/navigator_folder/widget_navigator_second_page.dart';

// Navigator는 화면을 이동할 때 사용한다.
// main.dart에서 아래와 같이 route 설정을 해줘야 한다.
/* routes: {
        '/' :(context)=>Home(),
        '/Widget/NavigatorFirstPage' :(context)=>NavigatorFirstPage(),
       }, */
class WidgetNavigatorFirstPage extends StatelessWidget {
  const WidgetNavigatorFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_navigator_first_page.dart'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // Navigator.push를 이용해서 화면 이동 
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WidgetNavigatorSecondPage();
              },)),
              child: Text('Navigator.push 이용 1'),
            ),
            ElevatedButton(
              // Navigator.push를 이용해서 화면 이동. 위의 것과 builder를 만드는 것 외에 다른 것은 없음 
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder:(context) => WidgetNavigatorSecondPage())),
              child: Text('Navigator.push 이용 2'),
            ),
            ElevatedButton(
              // Navigator.pushNamed 이용해서 화면 이동. main.dart의 route로 정의한 이름을 이용하여 이동한다. 
              onPressed: () => Navigator.pushNamed(context, '/Widget/WidgetNavigatorSecondPage'),
              child: Text('Navigator.pushNamed'),
            ),
          ],
        ),
      ),
    );
  }
}