import 'package:flutter/material.dart';
import 'package:flutter_understand_project/home.dart';
import 'package:flutter_understand_project/stateful_folder/button01_folder/stateful_button01.dart';
import 'package:flutter_understand_project/stateful_folder/button02_folder/stateful_button02.dart';
import 'package:flutter_understand_project/stateful_folder/count_up_ex_folder/stateful_count_up_ex.dart';
import 'package:flutter_understand_project/stateful_folder/count_up_folder/stateful_count_up.dart';
import 'package:flutter_understand_project/stateful_folder/swtich_ex_folder/stateful_switch_ex.dart';
import 'package:flutter_understand_project/stateful_folder/text_field_add_folder/stateful_text_field_add.dart';
import 'package:flutter_understand_project/stateful_folder/text_field_calc_folder/stateful_text_field_calc.dart';
import 'package:flutter_understand_project/stateful_folder/textfield_switch_calc_ex_folder/stateful_textfield_switch_calc_ex.dart';
import 'package:flutter_understand_project/stateful_widget_folder/switch_folder/widget_switch.dart';
import 'package:flutter_understand_project/stateful_widget_folder/text_field_folder/widget_text_field.dart';
import 'package:flutter_understand_project/stateless_folder/buttons_folder/stateless_buttons_ex.dart';
import 'package:flutter_understand_project/stateless_folder/image01_folder/stateless_image01.dart';
import 'package:flutter_understand_project/stateless_folder/image02_folder/stateless_image02.dart';
import 'package:flutter_understand_project/stateless_folder/image_scrolling_folder/stateless_image_scrolling.dart';
import 'package:flutter_understand_project/stateless_folder/lee_folder/stateless_lee.dart';
import 'package:flutter_understand_project/stateless_folder/text_and_divider_folder/stateless_text_and_divider.dart';
import 'package:flutter_understand_project/stateless_folder/text_row_folder/stateless_text_row_ex.dart';
import 'package:flutter_understand_project/stateless_folder/text_width_column_and_row_folder/stateless_text_with_column_and_row.dart';
import 'package:flutter_understand_project/stateless_folder/text_with_not_appbar_folder/stateless_text_with_not_appbar.dart';
import 'package:flutter_understand_project/stateless_widget_folder/alert_dialog_folder/wigdet_alert_dialog.dart';
import 'package:flutter_understand_project/stateless_widget_folder/app_bar_folder/widget_app_bar.dart';
import 'package:flutter_understand_project/stateless_widget_folder/circle_avatar_folder/widget_circle_avatar.dart';
import 'package:flutter_understand_project/stateless_widget_folder/clip_oval_folder/widget_clip_oval.dart';
import 'package:flutter_understand_project/stateless_widget_folder/clip_rrect_folder/widget_clip_rrect.dart';
import 'package:flutter_understand_project/stateless_widget_folder/column_folder/widget_column.dart';
import 'package:flutter_understand_project/stateless_widget_folder/divider_folder/widget_divider.dart';
import 'package:flutter_understand_project/stateless_widget_folder/drawer_folder/widget_drawer.dart';
import 'package:flutter_understand_project/stateless_widget_folder/elevated_button_folder/widget_elevated_button.dart';
import 'package:flutter_understand_project/stateless_widget_folder/floating_action_button_folder/widget_floating_action_button.dart';
import 'package:flutter_understand_project/stateless_widget_folder/gesture_detector_folder/widget_gesture_detector.dart';
import 'package:flutter_understand_project/stateless_widget_folder/icon_button_folder/widget_icon_button.dart';
import 'package:flutter_understand_project/stateless_widget_folder/icon_folder/widget_icon.dart';
import 'package:flutter_understand_project/stateless_widget_folder/image_fitting_foler/widget_image_fitting.dart';
import 'package:flutter_understand_project/stateless_widget_folder/image_foler/widget_image.dart';
import 'package:flutter_understand_project/stateless_widget_folder/navigator_folder/widget_navigator_first_page.dart';
import 'package:flutter_understand_project/stateless_widget_folder/navigator_folder/widget_navigator_second_page.dart';
import 'package:flutter_understand_project/stateless_widget_folder/outlined_button_folder/widget_outlined_button.dart';
import 'package:flutter_understand_project/stateless_widget_folder/row_folder/widget_row.dart';
import 'package:flutter_understand_project/stateless_widget_folder/single_child_scroll_view_folder/widget_single_child_scroll_view.dart';
import 'package:flutter_understand_project/stateless_widget_folder/sizebox_folder/widget_size_box.dart';
import 'package:flutter_understand_project/stateless_widget_folder/snack_bar_folder/widget_snack_bar.dart';
import 'package:flutter_understand_project/stateless_widget_folder/text_button_folder/widget_text_button.dart';
import 'package:flutter_understand_project/stateless_widget_folder/text_folder/widget_text.dart';
import 'package:flutter_understand_project/stateless_widget_folder/transform_folder/widget_transform.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
       initialRoute: '/',
        // home: StatelessTextWithNotAppbar(),
        
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/StatelessWidget/Alert_Dialog', page: () => WigdetAlertDialog()),
        GetPage(name: '/StatelessWidget/App_Bar', page: () => WidgetAppBar()),
        GetPage(name: '/StatelessWidget/Circle_Avatar', page: () => WidgetCircleAvatar()),
        GetPage(name: '/StatelessWidget/Clip_Oval', page: () => WidgetClipOval()),
        GetPage(name: '/StatelessWidget/Clip_RRect', page: () => WidgetClipRrect()),
        GetPage(name: '/StatelessWidget/Column', page: () => WidgetColumn()),
        GetPage(name: '/StatelessWidget/Divider', page: () => WidgetDivider()),
        GetPage(name: '/StatelessWidget/Drawer', page: () => WidgetDrawer()),
        GetPage(name: '/StatelessWidget/Elevated_Button', page: () => WidgetElevatedButton()),
        GetPage(name: '/StatelessWidget/Floating_Action_Button', page: () => WidgetFloatingActionButton()),
        GetPage(name: '/StatelessWidget/Gesture_Detector', page: () => WidgetGestureDetector()),
        GetPage(name: '/StatelessWidget/Icon_Button', page: () => WidgetIconButton()),
        GetPage(name: '/StatelessWidget/Icon', page: () => WidgetIcon()),
        GetPage(name: '/StatelessWidget/Image_Fitting', page: () => WidgetImageFitting()),
        GetPage(name: '/StatelessWidget/Image', page: () => WidgetImage()),
        GetPage(name: '/StatelessWidget/Row', page: () => WidgetRow()),
        GetPage(name: '/StatelessWidget/Navigator', page: () => WidgetNavigatorFirstPage()),
        GetPage(name: '/StatelessWidget/WidgetNavigatorSecondPage', page: () => WidgetNavigatorSecondPage()),
        GetPage(name: '/StatelessWidget/Outlined_Button', page: () => WidgetOutlinedButton()),
        GetPage(name: '/StatelessWidget/Row', page: () => WidgetRow()),
        GetPage(name: '/StatelessWidget/Single_Child_Scroll_View', page: () => WidgetSingleChildScrollView()),
        GetPage(name: '/StatelessWidget/Size_Box', page: () => WidgetSizeBox()),
        GetPage(name: '/StatelessWidget/Snack_Bar', page: () => WidgetSnackBar()),
        GetPage(name: '/StatelessWidget/Text_Button', page: () => WidgetTextButton()),
        GetPage(name: '/StatelessWidget/Text', page: () => WidgetText()),
        GetPage(name: '/StatelessWidget/Transform', page: () => WidgetTransform()),

        GetPage(name: '/StatefulWidget/Switch', page: () => WidgetSwitch()),
        GetPage(name: '/StatefulWidget/TextField', page: () => WidgetTextField()),
        
        GetPage(name: '/Stateless/Buttons', page: () => StatelessButtonsEx()),
        GetPage(name: '/Stateless/ImageScrolling', page: () => StatelessImageScrolling()),
        GetPage(name: '/Stateless/Image01', page: () => StatelessImage01()),
        GetPage(name: '/Stateless/Image02', page: () => StatelessImage02()),
        GetPage(name: '/Stateless/Lee', page: () => StatelessLee()),
        GetPage(name: '/Stateless/TextAndDivider', page: () => StatelessTextAndDivider()),
        GetPage(name: '/Stateless/TextRow', page: () => StatelessTextRowEx()),
        GetPage(name: '/Stateless/TextWithColumnAndRow', page: () => StatelessTextWithColumnAndRow()),
        GetPage(name: '/Stateless/TextWithNotAppBar', page: () => StatelessTextWithNotAppbar()),



        GetPage(name: '/Stateful/Button01', page: () => StatefulButton01()),
        GetPage(name: '/Stateful/Button02', page: () => StatefulButton02()),
        GetPage(name: '/Stateful/CountUp', page: () => StatefulCountUp()),
        GetPage(name: '/Stateful/CountUpEx', page: () => StatefulCountUpEx()),
        GetPage(name: '/Stateful/SwitchEx', page: () => StatefulSwitchEx()),
        GetPage(name: '/Stateful/TextFieldAdd', page: () => StatefulTextFieldAdd()),
        GetPage(name: '/Stateful/TextFieldCalc', page: () => StatefulTextFieldCalc()),
        GetPage(name: '/Stateful/TextFieldSwitchCalcEx', page: () => StatefulTextfieldSwitchCalcEx()),
        // GetPage(name: '/Stateful/SwitchEx', page: () => StatefulSwitchEx()),


        // GetPage(name: '/StatelessWidget/Image_Fitting', page: () => WidgetImageFitting()),
        // GetPage(name: '/StatelessWidget/Image_Fitting', page: () => WidgetImageFitting()),
      ],
    );
  }
}