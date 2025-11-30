import 'package:flutter/material.dart';

class StatefulCountUpEx extends StatefulWidget {
  const StatefulCountUpEx({super.key});

  @override
  State<StatefulCountUpEx> createState() => _StatefulCountUpExState();
}

class _StatefulCountUpExState extends State<StatefulCountUpEx> {
 // === Property ===
  late int count; // 카운트 변수
  late double imageOpacity; // 이미지 투명도 변수
  late double imageSize; // 이미지 크기 변수
  @override
  void initState() {
    super.initState();
    count = 0;
    imageOpacity = 0;
    imageSize = 200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Up & Down'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/common/pikachu-1.jpg',
              width: 300,
              opacity: AlwaysStoppedAnimation(imageOpacity),
            ),

            Text(
              '현재 클릭수는 $count입니다',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: FloatingActionButton(
                    heroTag: 'count_up_ex',
                    onPressed: () => changeCount(),
                    child: Icon(Icons.add, color: Colors.white),
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: FloatingActionButton(
                    onPressed: () => changeCount(false),
                    child: Icon(Icons.remove, color: Colors.white),
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Image.asset('images/common/pikachu-1.jpg', width: imageSize,),
              ),
            ),
          ],
        ),
      ),
    );
  } // build

  // === Functions ===
  void changeCount([bool isValue = true]) {
    isValue ? count++ : count--;

    count == 10 ? showImage() : hideImage();
    imageSize = count + 200;
    if (count > 100) imageSize = 300;
    if (count < -100) imageSize = 100;
    setState(() {});
  }

  void showImage() {
    imageOpacity = 1;
  }

  void hideImage() {
    imageOpacity = 0;
  }
}