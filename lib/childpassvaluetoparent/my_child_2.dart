import 'dart:ffi';

import 'package:flutter/material.dart';

class MyChild2 extends StatelessWidget {
  final String title;

  final VoidCallback function;

  MyChild2({required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: FloatingActionButton(
        onPressed: () {
          function();
        },
        child: Text(title),
      ),
    );
  }
}
