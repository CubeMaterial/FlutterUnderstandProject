import 'package:flutter/material.dart';

class StatelessTextRowEx extends StatelessWidget {
  const StatelessTextRowEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar:AppBar(
        title : Text('stateless_text_row_ex.dart'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body : Center(
        child : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('James', textAlign: TextAlign.right,),
            SizedBox(width: 20),
            Text('AAAA'),
            SizedBox(width: 20),
            Text('BBBB'),
          ],
        ),
      )
      );
  }
}