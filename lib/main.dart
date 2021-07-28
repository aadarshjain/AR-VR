import 'package:flutter/material.dart';
import 'package:humac/homepage.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Login()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY FIRST APP'),
        centerTitle: true,
      ),
    );
  }
}
