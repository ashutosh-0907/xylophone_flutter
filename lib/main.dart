import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded press({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
         style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
         ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              press(color: Colors.red, soundNumber: 1),
              press(color: Colors.orange, soundNumber: 2),
              press(color: Colors.yellow, soundNumber: 3),
              press(color: Colors.green, soundNumber: 4),
              press(color: Colors.teal, soundNumber: 5),
              press(color: Colors.blue, soundNumber: 6),
              press(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
