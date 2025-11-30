import 'package:flutter/material.dart';

class StatelessImageScrolling extends StatelessWidget {
  const StatelessImageScrolling({super.key});

  final double fontSize = 36;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateless_image_scrolling.dart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            spacing: 10,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  spacing: 10,
                  children: [
                    Image.asset('images/common/nation/austria.png',
                    width: 100,
                    height: 50,
                    fit: BoxFit.fill
                    ),
                    Image.asset('images/common/nation/belgium.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/estonia.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/france.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/germany.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/hungary.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/italy.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/lithuania.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/luxemburg.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                     Image.asset('images/common/nation/netherland.png',
                     width: 100,
                     height: 50,
                     fit: BoxFit.fill),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  spacing: 10,
                  children: [
                    Image.asset('images/common/flower/flower_01.png',
                    width: 100,
                    height: 200,
                    fit: BoxFit.fill),
                    Image.asset('images/common/flower/flower_02.png',
                    width: 100,
                    height: 200,
                    fit: BoxFit.fill),
                    Image.asset('images/common/flower/flower_03.png',
                    width: 100,
                    height: 200,
                    fit: BoxFit.fill),
                    Image.asset('images/common/flower/flower_04.png',
                    width: 100,
                    height: 200,
                    fit: BoxFit.fill),
                    Image.asset('images/common/flower/flower_05.png',
                    width: 100,
                    height: 200,
                    fit: BoxFit.fill),
                    Image.asset('images/common/flower/flower_06.png',
                    width: 100,
                    height: 200,
                    fit: BoxFit.fill),
        
                  ],
                ),
              ),
              Text('A', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
             Text('B', 
               style: TextStyle(
                 fontSize: fontSize,
                 fontWeight: FontWeight.bold
               ),
             ), 
              Text('C', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('D', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('E', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('F', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('G', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('H', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('I', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('J', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('K', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('L', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('M', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('N', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('O', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('P', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('Q', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('R', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('S', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('T', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('U', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('V', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('W', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('X', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('Y', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
              Text('Z', 
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}