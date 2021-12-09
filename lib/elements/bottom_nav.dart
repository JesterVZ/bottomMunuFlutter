import 'package:bottom_menu_flutter/screens/profile_page.dart';
import 'package:bottom_menu_flutter/elements/row_bar.dart';
import 'package:bottom_menu_flutter/screens/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/chat_page.dart';
import '../screens/map_page.dart';
import 'globals.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  List<Widget> pageList = <Widget>[
    ProfilePage(),
    ChatPage(),
    SettingsPage(),
    MapPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      globalIndex = index;
    });
  }

  List<BottomNavigationBarItem> BottomNavBarItems() {
    List<BottomNavigationBarItem> items = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Main page',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'Chat',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.map),
        label: 'Map',
      ),
    ];
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: IconButton(
        icon: const Icon(Icons.arrow_back_outlined),
        onPressed: () => Navigator.of(context).pop(null),
      )),
      body: Column(
        children: [
          RowBar(
            onClick: _onClick,
          ),
          pageList[globalIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: BottomNavBarItems(),
        currentIndex: globalIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  _onClick(int index) {
    setState(() {
      globalIndex = index;
    });
  }
}
