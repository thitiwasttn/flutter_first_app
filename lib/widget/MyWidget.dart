import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  late int counter;


  @override
  void initState() {
    super.initState();
    counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'counter is ${counter}',
            style: TextStyle(fontSize: 40),
          ),
        ),
        appBar: AppBar(
          title: Text('นับเลข'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter = counter + 1;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
