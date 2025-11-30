import 'package:flutter/material.dart';

class StatefulCountUp extends StatefulWidget {
  const StatefulCountUp({super.key});

  @override
  State<StatefulCountUp> createState() => _StatefulCountUpState();
}

class _StatefulCountUpState extends State<StatefulCountUp> {
  // === Property ===
  late int count; // 카운트 변수

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(title: Text('Count Up!!'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '현재 클릭 수는 $count입니다.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    increaseCount(true);
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    increaseCount(false);
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => increaseCount(true),
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                ), // Text('abc'),)
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'count_up',
        onPressed: () => increaseCount(true),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ), // Te
    );
  } // build

  // ---- Functions -----

  void increaseCount(bool isValue) {
    // isValue ? count++ : count--;


    count = isValue? ++count : count <= 0? 0:--count;
    setState(() {});
  }
}