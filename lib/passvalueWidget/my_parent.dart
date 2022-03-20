import 'package:first_app/passvalueWidget/my_child.dart';
import 'package:flutter/material.dart';

class MyParent extends StatelessWidget {
  final String titleProperties = 'Data pass througe';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: MyChild(title: titleProperties),
    );
  }
}
