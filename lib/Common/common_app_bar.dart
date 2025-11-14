/* 20251111
  AppBar를 쉽게 사용 할 수 있도록 class로 지정함.
  간단하게 title, fontWeight, fontsize, backgroundColor, foregroundColor 지정
  actions는 선언은 해뒀으나 아직 미적용 
  ---------------------------------------------------------------------------
  20251114
  actions, centerTitle 적용되도록 수정
  함수명 수정
  get으로 외부에서 값 볼 수 있게끔 수정
 */

import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  
  CommonAppBar({
    super.key, 
    title, 
    fontWeight,
    fontSize, 
    backgroundColor, 
    foregroundColor,
    actions,
    centerTitle}): 
   _title = title ?? "",
  _fontWeight = fontWeight ?? FontWeight.bold,
  _backgroundColor = backgroundColor ?? Colors.blueGrey,
  _foregroundColor = foregroundColor ?? Colors.white,
  _titleFontSize = fontSize ?? 24,
  _isCenterTitle = centerTitle ?? true,
  _actions = actions ?? [];


  String _title;
  String get title => _title;

  FontWeight _fontWeight;
  FontWeight get fontWeight => _fontWeight;

  Color _backgroundColor;
  Color get backgroundColor => _backgroundColor;

  Color _foregroundColor;
  Color get foregroundColor => _foregroundColor;

  double _titleFontSize;
  double get titleFontSize => _titleFontSize;

  List<Widget> _actions;
  List<Widget> get actions => _actions;

  bool _isCenterTitle;
  bool get isCenterTitle => _isCenterTitle;

  //  set fontWeight(FontWeight fontWeight) {
  //   _fontWeight = fontWeight;
  // }
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:Text(_title,
      style: TextStyle(
        fontSize: _titleFontSize,
        fontWeight: _fontWeight
        ),
      ),
      backgroundColor: _backgroundColor,
      foregroundColor: _foregroundColor,
      centerTitle: _isCenterTitle,
      actions: _actions,
    );
  }

  void changeText(String msg)
  {
    _title = msg;
  }

  void changeBackgroundColor(Color c)
  {
    _backgroundColor = c;
  }

  void changeForegroundColor(Color c)
  {
    _foregroundColor = c;
  }

  void changeFontSize(double size)
  {
    _titleFontSize = size;
  }

  void changeFontWeight(FontWeight fontWeight)
  {
    _fontWeight = fontWeight;
  }

  void changeCenterTitle(bool centerTitle)
  {
    _isCenterTitle = centerTitle;
  }

  void changeActions(List<Widget> list)
  {
    _actions = list;
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}