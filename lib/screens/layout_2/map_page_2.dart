import 'package:bottom_menu_flutter/screens/layout_3/map_page_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapPage2 extends StatelessWidget{
  const MapPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Column(
            children: [
              const Center(
                child: Text('Map page D2'),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MapPage3())),
                  child: const Text('Go to page 3')
              )
            ]
        )
    );
  }

}