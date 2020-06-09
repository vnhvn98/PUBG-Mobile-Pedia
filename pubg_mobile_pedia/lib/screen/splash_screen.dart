import 'package:flutter/material.dart';
import 'package:pubgmobilepedia/screen/bottomnavbar.dart';
import 'dart:async';

import 'package:pubgmobilepedia/theme/colors/light_colors.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration,(){
      Navigator.pushReplacementNamed(context,BottomNavBarScreen.routeName);
    });
  }
  Widget build(BuildContext context) {
    final sizeWidthImage = MediaQuery.of(context).size.width;
    final sizeHeightImage = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: Center(
        child: Container(
          height: sizeWidthImage * 0.3,
          width: sizeWidthImage * 0.6,
          child: Image.asset(
            'assets/images/pubgm.png',
          ),
        ),
      ),
    );
  }
}