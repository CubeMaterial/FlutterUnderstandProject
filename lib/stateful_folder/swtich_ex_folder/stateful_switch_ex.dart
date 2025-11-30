import 'package:flutter/material.dart';

class StatefulSwitchEx extends StatefulWidget {
  const StatefulSwitchEx({super.key});

  @override
  State<StatefulSwitchEx> createState() => _StatefulSwitchExState();
}

class _StatefulSwitchExState extends State<StatefulSwitchEx> {
  // === Property ===
  late bool isChangableState; // 상태 변수
  late Color buttonColor; // 버튼 색상
  late String imagePath; // 이미지 경로
  late List<double> fontSizeList = [24,16]; // 폰트 크기 리스트
  late List<Color> textColorList = [Colors.redAccent, Colors.grey]; // 텍스트 색상 리스트
  late List<FontWeight> fontWeightList = [FontWeight.bold, FontWeight.normal ]; // 폰트 굵기 리스트

  @override
  void initState() {
    super.initState();
    isChangableState = false;
    checkScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Changed Button color on Switch'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25),
        ),
        body: Center(
          child: Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width:  100,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("스마일",
                  style: TextStyle(
                    fontSize: fontSizeList[0],
                    fontWeight: fontWeightList[0],
                    color: textColorList[0]
                  ),
                )],
                            ),
              ),
              Column(
                spacing: 30,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    GestureDetector(
                      onTap: () => onClickButton(),
                      child: Image.asset(imagePath, 
                      height: 100,
                      fit: BoxFit.fitHeight),
                    ),
                    ElevatedButton(
                      onPressed:() => onClickButton(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))
                      ), 
                      child: Text('Flutter',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                  Switch(
                    value: isChangableState, 
                    onChanged: (value) {
                    isChangableState = value;
                    checkScreen();
                  }
                )
              ],
            ),
            SizedBox(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("피카츄",style: TextStyle(
                    fontSize: fontSizeList[1],
                    fontWeight: fontWeightList[1],
                    color: textColorList[1],
                  )
                )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } // build

  // === Functions ===
  void onClickButton()
  {
    isChangableState = isChangableState? false : true;
    checkScreen();  
  }
  void checkScreen()
  {
    buttonColor = isChangableState? Colors.redAccent : Colors.cyan;
    imagePath = isChangableState? 'images/common/pikachu-1.jpg':'images/common/smile.png';
    fontSizeList[0] = isChangableState? 16:24;  
    fontSizeList[1] = isChangableState? 24:16;
    fontWeightList[0] = isChangableState? FontWeight.normal: FontWeight.bold;
    fontWeightList[1] = isChangableState? FontWeight.bold : FontWeight.normal;
    textColorList[0] = isChangableState? Colors.grey:Colors.cyan;
    textColorList[1]= isChangableState? Colors.redAccent:Colors.grey;
    
    setState(() {
      
    });
  }
}