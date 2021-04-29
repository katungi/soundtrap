import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = "SoundTrap Demo";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF41224a),
          title: Center(
            child: Text(_title),
          ),
        ),
        body: Center(
          child: Text(_title),
        ),
      ),
    );
  }
}
