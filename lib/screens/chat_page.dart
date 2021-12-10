
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'layout_2/chat_page_2.dart';

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Text('Chat page B1'),
          ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatPage2())),
              child: const Text('Go to page 2')
          )
        ]
    );
  }

}