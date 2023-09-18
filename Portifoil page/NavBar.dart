import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:portfoli/Portifoil%20page/ServicePage.dart';
class NavBar extends StatelessWidget {
   NavBar({Key? key}) : super(key: key);

  final ScrollController _scrollController=ScrollController();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        controller: _scrollController,
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName:Text ("sajad mohamed"),
              accountEmail: Text("sajaa_srt8_almokhtar@yahoo.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("img1.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("img.jpg"),
                fit: BoxFit.cover
              ),

            ),
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text("Home"),
            onLongPress: (){
              _scrollController.animateTo(_scrollController.offset - 300, duration: const Duration(microseconds: 1000),curve: Curves.easeIn);
            },
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.home_repair_service_rounded),
            title: Text("Service"),
            onTap:() => null,
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.wordpress_outlined),
            title: Text("Work"),
            onTap:() => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text("contact"),
            onTap:() => null,
          ),
          Divider(),
        ],
      ),

    );
  }
}


