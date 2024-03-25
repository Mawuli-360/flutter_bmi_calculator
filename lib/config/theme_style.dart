import 'package:calc/config/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themesData(bool isDark, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDark ? darkBgColor : bgColor,
      primaryColor: isDark ? bgColor : primaryColor,
      backgroundColor: isDark ? darkBgColor : bgColor,
      dividerColor: isDark ? Colors.blueGrey.shade900 : null,
    );
  }
}
