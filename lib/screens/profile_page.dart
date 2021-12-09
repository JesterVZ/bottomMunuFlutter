import 'package:bottom_menu_flutter/screens/layout_2/prifile_page_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Text('Profile page A1'),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage2())),
            child: const Text('Go to page 2')
          )
        ]
    );
  }

}