import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class xylophone extends StatefulWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  void playsound(int soundNumber){
    final player=AudioPlayer();
    player.play('audio/assets$soundNumber.wav' as Source);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Xylophone'),),
      body: Column(
      children:[
        buildExpanded(Colors.white,1),
      buildExpanded(Colors.red,2),
      buildExpanded(Colors.black,3),
      buildExpanded(Colors.green,4),
      buildExpanded(Colors.yellow,5),
      buildExpanded(Colors.purple,6),
      buildExpanded(Colors.orange,7),
  ],
    ),
    );
  }

  Expanded buildExpanded(Color Color,int soundNumber) => Expanded(child: Container(color: Color,
    child:Center(child: TextButton(onPressed: (){playsound(soundNumber);}, child: Text('Audio')),),
  ));
  }

