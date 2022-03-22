import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  final String userId;
  final String result = "ข้อความตอบกลับ";

  FormScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Screen'),
        automaticallyImplyLeading: false,
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx >= 15 || details.delta.dx <= -15) {
            print(details.delta.dx);
            Navigator.pop(context, result);
          }
        },
        child: Center(
          child: Text(
            'ลากนิ้วเพื่อเลื่อนหน้าจอ',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
