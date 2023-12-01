import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart'; 

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), 
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginPage(), 
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9E2),
      body: Center(
        child: Image.asset(
          'assets/imgs/logo.png', 
          height: 270,
          width: 270,
        ),
      ),
    );
  }
}
