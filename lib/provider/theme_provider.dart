import 'package:calc/model/theme_preferences.dart';
import 'package:flutter/material.dart';

class ThemeModal extends ChangeNotifier {
  late bool _isDark;
  late ThemePreferences themePreferences;
  bool get isDark => _isDark;

  ThemeModal() {
    _isDark = false;
    themePreferences = ThemePreferences();
    getThemePreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    themePreferences.setTheme(value);
    notifyListeners();
  }

  getThemePreferences() async {
    _isDark = await themePreferences.getTheme();
    notifyListeners();
  }
}
