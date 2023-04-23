import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                },                  
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange),),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },                  
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note3.wav'));
                },                  
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note24.wav'));
                },                  
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note5.wav'));
                },                  
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note6.wav'));
                },                  
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              TextButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note7.wav'));
                },                  
              ),
            ],
          ),
        ),
      ),
    );
  }
}
