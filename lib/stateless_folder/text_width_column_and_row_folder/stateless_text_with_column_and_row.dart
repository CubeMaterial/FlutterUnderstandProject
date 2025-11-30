import 'package:flutter/material.dart';

class StatelessTextWithColumnAndRow extends StatelessWidget {
  const StatelessTextWithColumnAndRow({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: Text('stateless_text_with_column_and_row.dart'),
      ),
      body : Center(
        child : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.account_circle),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.account_balance),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('James', textAlign: TextAlign.right),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('Cathy', textAlign: TextAlign.right),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('Kenny',textAlign: TextAlign.right ),
                )
              ],
            ),
          ],
        )
      )
    );
  }
}