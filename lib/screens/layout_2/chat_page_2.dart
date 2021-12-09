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
            children: const [
              Center(
                child: Text('Chat page B2'),
              )

            ]
        )
    );
  }

}