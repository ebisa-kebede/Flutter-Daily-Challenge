import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('State'),
        ),
        body: Column(
          children: [
            Slider(
              value: currentPosition,
              divisions: 5,
              max: 100,
              label: currentPosition.round().toString(),
              onChanged: (double value) {
                setState(() {
                  currentPosition = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
