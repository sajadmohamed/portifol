import 'package:flutter/material.dart';
import 'package:portfoli/Theme/Theme_constants.dart';
import 'package:portfoli/Theme/theme_manager.dart';

import 'Portifoil page/Page.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark =Theme.of(context).brightness == Brightness.dark;
    return MaterialApp(
      color: isDark?Colors.black:Colors.white,
      debugShowCheckedModeBanner: false,
      home: Portifoilpage(),
    );

  }
}
