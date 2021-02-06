import 'package:chowcub/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chow Cub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class MyNmae extends StatefulWidget {
  MyNmae({Key key}) : super(key: key);

  @override
  _MyNmaeState createState() => _MyNmaeState();
}

class _MyNmaeState extends State<MyNmae> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(
       ),
    );
  }
}