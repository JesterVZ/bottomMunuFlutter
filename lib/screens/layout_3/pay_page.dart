import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayPage extends StatelessWidget{
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Column(
            children: const [
              Center(
                child: Text('Pay Page'),
              )

            ]
        )
    );
  }

}