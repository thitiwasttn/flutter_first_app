import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home screen'),
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'about'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'thitiwas')
        ],
        currentIndex: 0,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          print('index: $index');
        },
      ),
    );
  }
}
