import 'package:calc/Config/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themesData(bool isDark, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDark ? darkBgColor : bgColor,
      primaryColor: isDark ? bgColor : primaryColor,
      backgroundColor: isDark ? darkBgColor : bgColor,
    );
  }
}
