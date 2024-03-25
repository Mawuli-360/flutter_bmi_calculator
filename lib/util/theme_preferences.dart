import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  static const String key = "THEME";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(key, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   return sharedPreferences.getBool(key) ?? false;
  }
}
