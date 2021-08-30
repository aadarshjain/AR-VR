import 'package:flutter/material.dart';
import 'package:humac/homepage.dart';
import 'package:flutter/services.dart';
import 'login.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((_){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));}
// }
void main() {
  //WidgetsFlutterBinding.ensureInitialized();   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((_){
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
