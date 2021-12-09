import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'globals.dart';
import 'bottom_nav.dart';

class RowBar extends StatefulWidget {
  final Function(int) onClick;

  const RowBar({Key? key, required this.onClick}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RowBar();
}

class _RowBar extends State<RowBar> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(Icons.arrow_back_ios_outlined),
              onPressed: () => {
                    if (globalIndex >= 0)
                      {globalIndex--, widget.onClick(globalIndex)}
                  }),
          IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () => {
                    if (globalIndex <= 3)
                      {globalIndex++, widget.onClick(globalIndex)}
                  })
        ],
      ),
    ]);
  }
}
