import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey(var colour, int num) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellowAccent, 3),
              buildKey(Colors.lightGreenAccent, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.lightBlue, 6),
              buildKey(Colors.deepPurpleAccent, 7)
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}
