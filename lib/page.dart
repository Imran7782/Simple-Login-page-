import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text("Page 2"),
        backgroundColor: const Color.fromARGB(255, 18, 97, 161),
      ),
      body: Center(
        child: Text(
          "Welcome to Page 2!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
