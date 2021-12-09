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
            children: const [
              Center(
                child: Text('Settings page C2'),
              )

            ]
        )
    );
  }

}