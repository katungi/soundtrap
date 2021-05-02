import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundtrap/services/sampler.dart';
import 'package:soundtrap/views/display.dart';
import 'package:soundtrap/views/pad-bank.dart';
import 'package:soundtrap/views/sequencer.dart';
import 'package:soundtrap/views/transport.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  Sampler.init();
  runApp(Game());
}

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoundTrap',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String _title = "SoundTrap";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(_title),
        ),
      ),
      body: Column(
        children: [Display(), Sequencer(), Transport(), PadBank()],
      ),
    );
  }
}
