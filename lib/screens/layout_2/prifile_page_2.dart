import 'package:bottom_menu_flutter/screens/layout_3/profile_page_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget{
  const ProfilePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            ),
          body: Column(
              children:  [
                const Center(
                  child: Text('Profile page A2'),

                ),
                ElevatedButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage3())),
                    child: const Text('Go to page 3')
                )

              ]
          )
    );
  }

}