import 'package:flutter/material.dart';

class StatelessImage01 extends StatelessWidget {
  const StatelessImage01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('stateless_image01.dart'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/common/pikachu-1.jpg'),
              radius: 70,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/common/pikachu-2.jpg'),
              radius: 70,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/common/pikachu-3.jpg'),
              radius: 70,
            ),
          ],
        )
      )
    );
  }
}