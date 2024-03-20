import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  static const themeStatus = "themeStatus";
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;
  ThemeProvider() {
    getTheme();
  }
  Future<void> setDarkTheme({required bool themeValue}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setBool(themeStatus, themeValue);

    _darkTheme = themeValue;

    notifyListeners();
  }

  Future<bool> getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _darkTheme = pref.getBool(themeStatus) ?? false;

    notifyListeners();

    return _darkTheme;
  }
}
