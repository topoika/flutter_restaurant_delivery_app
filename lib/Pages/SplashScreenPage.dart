import 'package:chowcub/Pages/onbording.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashSreen extends StatefulWidget {
  SplashSreen({Key key}) : super(key: key);

  @override
  _SplashSreenState createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      home: Onbording(),
      duration: 5000,
      imageSize: 80,
      imageSrc: "assets/images/logo.png",
      text: "The best food for you",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontFamily: 'DancingScript',
        fontSize: 20.0,
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
