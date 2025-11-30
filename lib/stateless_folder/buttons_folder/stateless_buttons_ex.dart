import 'package:flutter/material.dart';

class StatelessButtonsEx extends StatelessWidget {
  const StatelessButtonsEx({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('stateless_buttons_ex.dart',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        )),
        backgroundColor: const Color.fromARGB(255, 109, 38, 16),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center
      (
        child : Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
             TextButton
             (
               style: TextButton.styleFrom
               (
                 foregroundColor: Colors.red,
                 shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(120)),
                 padding: EdgeInsets.fromLTRB(0, 4, 0, 4)
               ),
               onPressed: () => printText('short'),
               onLongPress: () => printText('long'),
               child: Text
               (
                 'Text Button',
                 style: TextStyle
                 (
                   fontSize: 36,
                   fontWeight: FontWeight.bold,
                 )
               )
             ),
            ElevatedButton
            (
              style: TextButton.styleFrom
              (
                foregroundColor: Colors.red, 
                backgroundColor: Colors.yellowAccent,
                shape: RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(120)),
                padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                elevation: 5
              ),
              onPressed: () => printGugudan(5),
              onLongPress: () => printGugudan(7),
              child: Text
              (
                '구구단 5단 출력',
                style: TextStyle
                (
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                )
              )
            ),
            OutlinedButton
            (
              style: OutlinedButton.styleFrom
              (
                foregroundColor: Colors.green,
                side: BorderSide
                (
                  color: Colors.black,
                  width: 5
                ),
                padding: EdgeInsets.fromLTRB(0, 4, 0, 4)
              ),
              onPressed: ()
              {
                printGugudan(7);
              }, 
              onLongPress: () => printGugudan(16),
              child: Text
              (
                '구구단 7단 출력',
                style: TextStyle
                (
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                )
              )
            ),
            TextButton.icon
            (
              style: TextButton.styleFrom
              (
                padding: EdgeInsets.fromLTRB(0, 4, 0, 4)
              ),
              onPressed: ()
              {
                printGugudan(7);
              }, 
              icon: Icon
              (
                Icons.home,
                size: 30,
                color: Colors.amber,
              ),
              label: Text('go to home')
            ),
            ElevatedButton.icon
            (
              style: TextButton.styleFrom
              (
                foregroundColor: Colors.white, 
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(10)),
                elevation: 5,
                minimumSize: Size(80, 40)
              ),
              onPressed: (){}, 
              icon: Icon
              (
                Icons.school,
                size: 30,
                color: Colors.amber,
              ),
              label: Text('go to school')
            ),
            OutlinedButton.icon
            (
              onPressed: (){}, 
              icon: Icon
              (
                Icons.holiday_village,
                size: 30,
                color: Colors.amber,
              ),
              label: Text('go to village')
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: 
              [
                TextButton
                (
                  style: TextButton.styleFrom
                  (
                    foregroundColor: Colors.blue,
                    shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(120)),
                    minimumSize: Size(80,40)
                  ),
                  // onPressed: () => print("안녕하세요"),
                  onPressed: () => printText('short'),
                  onLongPress: () => printText('long'),
                  child: Text
                  (
                    'Text Button',
                    style: TextStyle
                    (
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ),
                ElevatedButton
                (
                  style: TextButton.styleFrom
                  (
                    foregroundColor: Colors.white, 
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(8)),
                    elevation: 5,
                    minimumSize: Size(80,40)
                  ),
                  onPressed: () => printGugudan(5),
                  onLongPress: () => printGugudan(7),
                  child: Text
                  (
                    'Text Button',
                    style: TextStyle
                    (
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ),
              ],
            )
          ],
        )
      ),
    );
  }

  // --------- Funtions ---------
  void printText(String msg)
  {
    print("$msg pressed"); 
  }
  void sumNumber()
  {
    int num = 10;
    int num2 = 20;

    print("안녕하세요. 합계는 ${num+num2}");
  }

  void printGugudan(int dan)
  {
    for(int i = 1; i <= 9; i++)
    {
      print("$dan X $i = ${dan*i}");
    }
  }

  
}
//home