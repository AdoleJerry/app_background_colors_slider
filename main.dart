import 'package:flutter/material.dart';
import 'package:appcolorslider/mainpage/appcolorslider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Color Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorChangerScreen(),
    );
  }
}
