import 'package:flutter/material.dart';

class StatelessTextAndDivider extends StatelessWidget {
  const StatelessTextAndDivider({super.key});

 @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar:AppBar( // app bar 선언
        title : Text('stateless_text_and_divider.dart'), // app bar 제목  
        backgroundColor: Colors.lightGreen, // app bar 배경색
        foregroundColor: Colors.white,), //app bar 글자색
         body : Center( //body 시작. 가로로 만든다. 
          child: Column( // column 선언. 세로로 만든다.
          mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙 정렬
          children: [ //  Column 내의 차일드 선언
          Text('피카츄', style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 100),),
          Text('라이츄'),
          Text('파이리'),
          Divider(height: 30,
                  color: Colors.red, 
                  thickness: 20, ),
          // Text(''),
          Text('꼬부기'),
          Text('버터플'),
          Text('야도란'),
          Divider(height: 30,color: Colors.red, thickness: 20, ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,  
                children: 
                [Text('피죤투'), Text('또가스'), Text('메타몽')],),
              ],
          ),  
          Text('포켓몬스터')  
        ]
      )
    )
    );
  }
}