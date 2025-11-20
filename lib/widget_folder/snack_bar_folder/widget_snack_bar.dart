import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

class WidgetSnackBar extends StatelessWidget {
  const WidgetSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_snack_bar.dart'),
      body: Center(
        child: ElevatedButton(
          onPressed: () => snackBarFunction(context, "스낵바 테스트"),
          child: Text('Clicked'),
        ),
      ),
    );
  }

  void snackBarFunction(
    BuildContext ctx,
    String msg, [
    int duration = 3,
    Color color = Colors.cyan,
  ]) {
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        //SnackBar 는 디자인
        content: Align(alignment: AlignmentGeometry.center, child: Text(msg)),
        backgroundColor: color,
        duration: Duration(seconds: duration),
      ),
    );
  }
}
