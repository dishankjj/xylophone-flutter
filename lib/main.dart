import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int index){
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Expanded buildKey ({Color color, int i}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => playSound(i),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey(color: Colors.red, i: 1),
              buildKey(color: Colors.orange, i: 2),
              buildKey(color: Colors.green, i: 3),
              buildKey(color: Colors.blue, i: 4),
              buildKey(color: Colors.yellow, i: 5),
              buildKey(color: Colors.purple, i: 6),
              buildKey(color: Colors.teal, i: 7),
            ],
          ),
        ),
      ),
    );
  }
}
