import 'dart:ffi';

import 'package:flutter/material.dart';

class MyChild2 extends StatelessWidget {
  final String title;

  final VoidCallback  function;

  MyChild2({required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Text(title),
        onTap: function,
      ),
    );
  }
}
