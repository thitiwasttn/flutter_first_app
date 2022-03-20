import 'package:first_app/childpassvaluetoparent/my_child_2.dart';
import 'package:flutter/material.dart';

class App2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App2> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter = 0;
  }

  increment() {
    setState(() {
      counter = counter + 1;
    });
  }

  decrement() {
    setState(() {
      counter = counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
              ),
              Text('counter $counter',
                  style: TextStyle(
                    fontSize: 90,
                  ),
                  textAlign: TextAlign.center),
              MyChild2(title: '+', function: increment),
              MyChild2(title: '-', function: decrement)
            ],
          ),
        ),
      ),
    );
  }
}
