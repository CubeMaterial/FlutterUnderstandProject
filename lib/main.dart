import 'package:flutter/material.dart';
import 'package:flutter_understand_project/home.dart';
import 'package:flutter_understand_project/widget_folder/image_fitting_foler/widget_image_fitting.dart';
import 'package:flutter_understand_project/widget_folder/image_foler/widget_image.dart';
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
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/Widget/Image', page: () =>WidgetImage()),
        GetPage(name: '/Widget/Image_Fitting', page: () =>WidgetImageFitting()),
      ],
    );
  }
}