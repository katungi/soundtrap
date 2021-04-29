import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundtrap/services/sampler.dart';
import 'package:soundtrap/views/display.dart';
import 'package:soundtrap/views/pad-bank.dart';
import 'package:soundtrap/views/sequencer.dart';
import 'package:soundtrap/views/transport.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Sampler.init();
  runApp(Game());
}

class Game extends StatelessWidget {
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
          body: Column(
            children: [Display(), Sequencer(), Transport(), PadBank()],
          )),
    );
  }
}
