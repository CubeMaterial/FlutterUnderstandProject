import 'package:flutter/material.dart';

class StatelessImage02 extends StatelessWidget {
  const StatelessImage02({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.green[200],
      appBar: AppBar(
        title: Text('stateless_image02.dart'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,20,20,10),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/common/pikachu-1.jpg'),
                radius: 70,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,10,10,20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/common/pikachu-2.jpg'),
                    radius: 70,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,20,20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/common/pikachu-3.jpg'),
                    radius: 70,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}