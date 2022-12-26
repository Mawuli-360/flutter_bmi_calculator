import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier {
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  setDarkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }
}
