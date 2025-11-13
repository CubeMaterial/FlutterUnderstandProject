import 'package:flutter/material.dart';
import 'package:flutter_understand_project/home.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
       initialRoute: '/',
      routes: {"/": (context)=> Home(),
              // "/First" : (context){return FirstPage();},
              // "/Second" : (context){return SecondPage();}},
      }
    );
  }
}