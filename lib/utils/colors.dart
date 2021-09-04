import 'package:flutter/material.dart';

var textColorPrimary = materialColor(0xFFFF513F);
const textColorSecondary = Color(0XFF747474);
const edit_text_background = Color(0XFFE8E8E8);
const white = Color(0XFFffffff);
const colorPrimary = Color(0xFFFF513F);
const view_color = Color(0XFFDADADA);

Map<int, Color> color = {
  50: Color.fromRGBO(255, 82, 63, .1),
  100: Color.fromRGBO(255, 82, 63, .2),
  200: Color.fromRGBO(255, 82, 63, .3),
  300: Color.fromRGBO(255, 82, 63, .4),
  400: Color.fromRGBO(255, 82, 63, .5),
  500: Color.fromRGBO(255, 82, 63, .6),
  600: Color.fromRGBO(255, 82, 63, .7),
  700: Color.fromRGBO(255, 82, 63, .8),
  800: Color.fromRGBO(255, 82, 63, .9),
  900: Color.fromRGBO(255, 82, 63, 1),
};

MaterialColor materialColor(colorHax) {
  return MaterialColor(colorHax, color);
}
