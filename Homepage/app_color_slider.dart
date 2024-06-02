import 'package:flutter/material.dart';

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  double Red = 0.0;
  double Green = 0.0;
  double Blue = 0.0;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color.fromRGBO(
      (Red * 255).toInt(),
      (Green * 255).toInt(),
      (Blue * 255).toInt(),
      1,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Background Color Changer'),
        backgroundColor: Colors.white54,
      ),
      body: Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: Red,
              onChanged: (newValue) {
                setState(() {
                  Red = newValue;
                });
              },
              min: 0.0,
              max: 1.0,
              divisions: 255,
              label: 'Red',
            ),
            Slider(
              value: Green,
              onChanged: (newValue) {
                setState(() {
                  Green = newValue;
                });
              },
              min: 0.0,
              max: 1.0,
              divisions: 255,
              label: 'Green',
            ),
            Slider(
              value: Blue,
              onChanged: (newValue) {
                setState(() {
                  Blue = newValue;
                });
              },
              min: 0.0,
              max: 1.0,
              divisions: 255,
              label: 'Blue',
            ),
          ],
        ),
      ),
    );
  }
}
