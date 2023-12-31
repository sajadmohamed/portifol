import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier{

  ThemeMode _themeMode = ThemeMode.light;

  get thememode => _themeMode;

  toggleTheme(bool isDark){
    _themeMode = isDark?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
}