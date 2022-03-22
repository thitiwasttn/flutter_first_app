import 'package:flutter/material.dart';

import '../tabToChange/form_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
        actions: [
          GestureDetector(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormScreen();
                }));
              })
        ],
      ),
      body: GestureDetector(
        onDoubleTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormScreen();
          }));
        },
        child: Center(
          child: Text('แตะหน้าจอสองครั้ง', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
