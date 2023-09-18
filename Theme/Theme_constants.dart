import 'package:flutter/material.dart';

ThemeData LightTheme = ThemeData(
  brightness: Brightness.light
);
ThemeData darkTheme = ThemeData(
  backgroundColor: Colors.black,
  brightness: Brightness.dark,
  accentColor: Colors.white,
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Colors.black),
    thumbColor: MaterialStateProperty.all<Color>(Colors.white),
  ),


  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0)
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              )
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          overlayColor: MaterialStateProperty.all<Color>(Colors.black26)
      )
  ),
);