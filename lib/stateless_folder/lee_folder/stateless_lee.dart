import 'package:flutter/material.dart';

class StatelessLee extends StatelessWidget {
  const StatelessLee({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        title : Text('stateless_lee.dart', 
        style: TextStyle(
          fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,      
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,8,0,0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/common/lee/Lee.jpg'),
                  radius: 70,),
              ),
              Divider(color: Colors.green[600],),
              
              Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Text('성웅', style: TextStyle(
                          color: Colors.white,
                          fontSize: 20  
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Text('이순신 장군', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30  
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Text('전적', style: TextStyle(
                          color: Colors.white,
                          fontSize: 20  
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Text('62전 62승', style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, 
                      color: Colors.green[600],),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('목포해전', style: TextStyle(
                          color: Colors.green[600],
                          letterSpacing: 2),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, 
                      color: Colors.green[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('사천포해전', style: TextStyle(
                          color: Colors.green[600],
                          letterSpacing: 2),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, 
                      color: Colors.green[600],),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('당포해전', style: TextStyle(
                          color: Colors.green[600],
                          letterSpacing: 2),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, 
                      color: Colors.green[600],),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('한산도대첩', style: TextStyle(
                          color: Colors.green[600],
                          letterSpacing: 2),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, 
                      color: Colors.green[600],),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('부산포해전', style: TextStyle(
                          color: Colors.green[600],
                          letterSpacing: 2),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, 
                      color: Colors.green[600],),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('명량해전', style: TextStyle(
                          color: Colors.green[600],
                          letterSpacing: 2),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline, 
                      color: Colors.green[600],),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('노량해전', style: TextStyle(
                          color: Colors.green[600],
                          letterSpacing: 2),),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/common/lee/turtle.gif',
                      ),
                      radius : 70,
                      backgroundColor: Colors.orange[400],),
                ],
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}