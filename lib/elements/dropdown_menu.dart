import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownMenuElement extends StatefulWidget {
  const DropDownMenuElement({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _DropDownMenuElement();
}

class _DropDownMenuElement extends State<DropDownMenuElement>{
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: const Icon(
        Icons.list
      ),
      items: <String>['first element', 'second element', 'third element']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}