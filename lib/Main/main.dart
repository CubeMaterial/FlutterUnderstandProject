import 'package:flutter/material.dart';
import 'package:flutter_understand_project/Main/app_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
       initialRoute: '/',
      routes: {"/": (context)=> AppHome(),
              // "/First" : (context){return FirstPage();},
              // "/Second" : (context){return SecondPage();}},
      }
    );
  }
}