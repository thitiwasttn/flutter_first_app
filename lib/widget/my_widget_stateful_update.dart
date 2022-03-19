import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidgetStatefulUpdate extends StatefulWidget {
  final String first;
  final String second;


  MyWidgetStatefulUpdate({Key? key, required this.first, required this.second}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyWidgetStatefulUpdateState();
  }
}

class _MyWidgetStatefulUpdateState extends State<MyWidgetStatefulUpdate> {

  late String followFirst;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(
        child: Text('followFirst $followFirst'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    followFirst = widget.first;
  }

}
