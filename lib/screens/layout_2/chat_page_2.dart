import 'package:bottom_menu_flutter/screens/layout_3/chat_page_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage2 extends StatelessWidget{
  const ChatPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Column(
            children: [
              const Center(
                child: Text('Chat page B2'),
              ),
              ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatPage3())),
                  child: const Text('Go to page 3')
              )

            ]
        )
    );
  }

}