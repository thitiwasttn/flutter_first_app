import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen2> {

  int itemIndex = 0;
  List<Widget> widgetList = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Setting'),
    ),
    Center(
      child: Text('About'),
    ),
    Center(
      child: Text('Thitiwas'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home screen'),
        ),
      ),
      body: SafeArea(
        child: widgetList.elementAt(itemIndex),
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
          setState(() {
            itemIndex = index;
            print('index: $index');
          });
        },
      ),
    );
  }

}