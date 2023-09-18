import 'package:flutter/material.dart';
import 'package:portfoli/Portifoil%20page/HomePage.dart';
import 'package:portfoli/Portifoil%20page/NavBar.dart';
import 'package:portfoli/Portifoil%20page/ServicePage.dart';
import 'package:portfoli/Portifoil%20page/projects.dart';

import '../Theme/Theme_constants.dart';
import '../Theme/theme_manager.dart';


class Portifoilpage extends StatefulWidget {
  const Portifoilpage({Key? key}) : super(key: key);

  @override
  State<Portifoilpage> createState() => _PortifoilpageState();
}
ThemeManager _themeManager = ThemeManager();

class _PortifoilpageState extends State<Portifoilpage> {

  @override
  void dispose() {
    _themeManager.addListener(themeListener);
    super.dispose();
  }
  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }
  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark =Theme.of(context).brightness == Brightness.dark;
    return MaterialApp(
      theme: LightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.thememode,
      home: Scaffold(

        drawer: NavBar(),
        appBar:AppBar(
          backgroundColor: isDark?Colors.black:Colors.grey[300] ,
          elevation: 0,
          title:Text("Theme App"),
          actions: [
            Switch(value: _themeManager.thememode == ThemeMode.dark, onChanged:(newValue){
              _themeManager.toggleTheme(newValue);
            }
            )
          ]
        ) ,
        body: ListView(
          children: [
            homepage(),
            servicepage(),
            ProjectsPage(),
          ],
        ) ,
      ),
    );
  }
}
