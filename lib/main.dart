import 'package:flutter/material.dart';
import 'package:flutter_understand_project/home.dart';
import 'package:flutter_understand_project/widget_folder/circle_avatar_folder/widget_circle_avatar.dart';
import 'package:flutter_understand_project/widget_folder/column_folder/widget_column.dart';
import 'package:flutter_understand_project/widget_folder/divider_folder/widget_divider.dart';
import 'package:flutter_understand_project/widget_folder/icon_button_folder/widget_icon_button.dart';
import 'package:flutter_understand_project/widget_folder/image_fitting_foler/widget_image_fitting.dart';
import 'package:flutter_understand_project/widget_folder/image_foler/widget_image.dart';
import 'package:flutter_understand_project/widget_folder/navigator_folder/navigator_first_page.dart';
import 'package:flutter_understand_project/widget_folder/row_folder/widget_row.dart';
import 'package:flutter_understand_project/widget_folder/single_child_scroll_view_folder/widget_single_child_scroll_view.dart';
import 'package:flutter_understand_project/widget_folder/sizebox_folder/widget_size_box.dart';
import 'package:flutter_understand_project/widget_folder/text_button_folder/widget_text_button.dart';
import 'package:flutter_understand_project/widget_folder/text_folder/widget_text.dart';
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

       routes: {
        '/' :(context)=>Home(),
        '/Widget/NavigatorFirstPage' :(context)=>NavigatorFirstPage(),
       },
        
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/Widget/Circle_Avatar', page: () => WidgetCircleAvatar()),
        GetPage(name: '/Widget/Column', page: () => WidgetColumn()),
        GetPage(name: '/Widget/Divider', page: () => WidgetDivider()),
        GetPage(name: '/Widget/Icon_Button', page: () => WidgetIconButton()),
        GetPage(name: '/Widget/Image', page: () => WidgetImage()),
        GetPage(name: '/Widget/Image_Fitting', page: () => WidgetImageFitting()),
        GetPage(name: '/Widget/Row', page: () => WidgetRow()),
        GetPage(name: '/Widget/Single_Child_Scroll_View', page: () => WidgetSingleChildScrollView()),
        GetPage(name: '/Widget/Size_Box', page: () => WidgetSizeBox()),
        GetPage(name: '/Widget/Text', page: () => WidgetText()),
        GetPage(name: '/Widget/Text_Button', page: () => WidgetTextButton()),
        // GetPage(name: '/Widget/Image_Fitting', page: () => WidgetImageFitting()),
        // GetPage(name: '/Widget/Image_Fitting', page: () => WidgetImageFitting()),
      ],
    );
  }
}