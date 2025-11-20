import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';

// stateless
// dialog를 띄운다.
// showDialog를 이용하여 띄우며 dialog도 메모리에 올라가는지라 끌 때 pop을 이용하여 메모리에서 제거를 해줘야 한다.
class WigdetAlertDialog extends StatelessWidget {
  const WigdetAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CommonAppBar(title: 'widget_alert_dialog.dart'),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showAlertPopup(context),
          child: Text('Clicked'),
        ),
      ),
    );
  }// build
  // === Functions ===

  void showAlertPopup(BuildContext ctx)
  {
    showDialog(
      barrierDismissible: false,
      context: ctx, 
      builder: (c){
        return AlertDialog(
          title: Text('Page 이동'),
          content: Text('아래의 버튼을 누르면 페이지 이동을 합니\n다.'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10)
          ),
          actions: [
            ElevatedButton(
              onPressed: ()
              {
                Navigator.of(c).pop();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10)
                )
              ), 
              child: Text('닫기',
                style: TextStyle(color: Colors.white)
              )
            )
          ] // actions in AlertDialog 
        );
      }
    );
  }
}