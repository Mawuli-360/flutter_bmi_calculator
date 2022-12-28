import 'package:calc/Config/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themesData(bool isDark, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDark ? Color(0xff1b1d37) : bgColor,
    );
  }
}
