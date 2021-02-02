import 'package:chowcub/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      home: HomePage(),
      duration: 8000,
      imageSize: 80,
      imageSrc: "assets/images/logo.png",
      text: "Chow Cub",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Color(0xFFE00051),
        Color(0xFF393B3F),
        Color(0xFFFDD129),
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
  }
}

class SplashSreen1 extends StatefulWidget {
  SplashSreen1({Key key}) : super(key: key);

  @override
  _SplashSreen1State createState() => _SplashSreen1State();
}

class _SplashSreen1State extends State<SplashSreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
