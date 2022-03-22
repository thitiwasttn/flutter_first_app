import 'package:flutter/material.dart';

import '../tabToChange/form_screen.dart';

class HomeScreen extends StatelessWidget {
  final String testUserID = "Abc1234";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
        actions: [
          GestureDetector(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              onTap: () async {
                String result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return FormScreen(userId: testUserID);
                }));
                print('result $result');
              })
        ],
      ),
      body: GestureDetector(
        onDoubleTap: () async {
          String result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) {
            return FormScreen(userId: testUserID);
          }));
          if (result != Null) {
            print('result $result');
          }
        },
        child: Center(
          child: Text('แตะหน้าจอสองครั้ง', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
