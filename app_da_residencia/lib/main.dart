import 'package:flutter/material.dart';
import 'intross.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de cadastro Flutter',
      home: SplashScreen(),
    );
  }
}
