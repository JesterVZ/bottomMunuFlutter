import 'package:bottom_menu_flutter/screens/layout_3/settings_page_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage2 extends StatelessWidget{
  const SettingsPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Column(
            children: [
              const Center(
                child: Text('Settings page C2'),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage3())),
                  child: const Text('Go to page 3')
              )

            ]
        )
    );
  }

}