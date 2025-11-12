// 20251111
// AppBar를 쉽게 사용 할 수 있도록 class로 지정함.
// 간단하게 title, fontWeight, fontsize, backgroundColor, foregroundColor 지정
// actions는 선언은 해뒀으나 아직 미적용


import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  CommonAppBar({
    super.key, 
    message, 
    fontWeight,
    fontSize, 
    backgroundColor, 
    foregroundColor,
    actions}): 
  _message = message ?? "",
  _fontWeight = fontWeight ?? FontWeight.bold,
  _backgroundColor = backgroundColor ?? Colors.blueGrey,
  _foregroundColor = foregroundColor ?? Colors.white,
  _titleFontSize = fontSize ?? 24,
  _actions = actions ?? [];


  String? _message;
  String? get message => _message;

  FontWeight? _fontWeight;
  FontWeight? get fontWeight => _fontWeight;

  Color? _backgroundColor;
  Color? get backgroundColor => _backgroundColor;

  Color? _foregroundColor;
  Color? get foregroundColor => _foregroundColor;

  double? _titleFontSize;
  double? get titleFontSize => _titleFontSize;

  List<Widget> _actions;
  List<Widget> get actions => _actions;


  //  set fontWeight(FontWeight fontWeight) {
  //   _fontWeight = fontWeight;
  // }
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:Text(_message!,
      style: TextStyle(
        fontSize: _titleFontSize,
        fontWeight: _fontWeight
        ),
      ),
      backgroundColor: _backgroundColor,
      foregroundColor: _foregroundColor,
      centerTitle: true,
      actions: _actions,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(120)),
    );
  }

  void ChangeText(String msg)
  {
    _message = msg;
  }

  void ChangeBackgroundColor(Color c)
  {
    _backgroundColor = c;
  }

  void ChangeForegroundColor(Color c)
  {
    _foregroundColor = c;
  }

  void ChangeFontSize(double size)
  {
    _titleFontSize = size;
  }

  void ChangeFontWeight(FontWeight fontWeight)
  {
    _fontWeight = fontWeight;
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}