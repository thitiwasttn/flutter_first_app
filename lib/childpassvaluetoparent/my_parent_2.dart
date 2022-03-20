import 'package:first_app/childpassvaluetoparent/my_child_2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyParent2 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _MyParent2State();
  }
}

class _MyParent2State extends State<MyParent2> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = 0;
  }

  void parentMethod() {
    setState(() {
      counter = counter + 1;
    });
    if (kDebugMode) {
      print('counter >> ${counter}');
    }
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyChild2(title: 'OK',
    function: parentMethod);
  }

}