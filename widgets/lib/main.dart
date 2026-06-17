import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _brightness = 0.5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Brightness Control")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: _brightness,
                min: 0,
                max: 1,
                divisions: 10,
                label: (_brightness * 100).round().toString() + "%",
                onChanged: (double value) {
                  setState(() {
                    _brightness = value;
                  });
                },
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.yellow.withOpacity(_brightness),
                child: Center(
                  child: Text(
                    "Brightness: ${(_brightness * 100).round()}%",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
