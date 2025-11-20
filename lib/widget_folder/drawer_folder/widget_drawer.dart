import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Common/common_app_bar.dart';


// drawer는 좌측 상단에 뜨는 아이콘으로 디폴트 값으로는 좌측 상단에서 나오는 바를 말한다.
class WidgetDrawer extends StatelessWidget {
  const WidgetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'widget_drawer.dart',),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text('pikachu'), 
                    accountEmail: Text('pikachu&gmial.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/common/pikachu-1.jpg'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                  
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email, 
                      color: Colors.blue,
                    ),
                    title: Text('보낸 메일함'),
                    onTap: (){
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email_outlined, 
                      color: Colors.red,
                    ),
                    title: Text('받은 메일함'),
                    onTap: (){
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}