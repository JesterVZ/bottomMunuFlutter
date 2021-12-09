
import 'package:bottom_menu_flutter/screens/row_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_nav.dart';

class SettingsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    BottomNavBar bn = new BottomNavBar();
    bn.createState();
    return Column(
        children: const [
          Text('Settings page')
        ]
    );
  }

}