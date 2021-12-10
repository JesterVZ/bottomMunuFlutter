import 'package:bottom_menu_flutter/screens/layout_2/settings_page_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../elements/bottom_nav.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('Map page D1'),
      ElevatedButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage2())),
          child: const Text('Go to page 2')
      )

    ]);
  }
}
