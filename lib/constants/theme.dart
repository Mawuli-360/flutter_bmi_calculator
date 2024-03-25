import 'package:calc/constants/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static ThemeData themesData(bool isDark, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor:
          isDark ? AppColors.darkBgColor : AppColors.bgColor,
      primaryColor: isDark ? AppColors.bgColor : AppColors.primaryColor,
      dividerColor: isDark
          ? const Color.fromARGB(189, 78, 100, 111)
          : const Color.fromARGB(144, 191, 206, 214),
      cardColor: isDark ? AppColors.darkBgColor : AppColors.bgColor,
    );
  }
}
