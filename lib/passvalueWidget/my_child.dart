import 'package:flutter/material.dart';

class MyChild extends StatelessWidget {
  final String title;

  MyChild({required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(title),
    );
  }
}
