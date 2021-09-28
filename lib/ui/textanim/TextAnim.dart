import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextAnim extends StatefulWidget {
  @override
  _TextAnimState createState() => _TextAnimState();
}

class _TextAnimState extends State<TextAnim> {
  double tsize = 30.0;
  void animTime(){
    Timer(Duration(milliseconds: 500),(){
      setState(() {
        tsize = 60.0;
      });
    });
  }
  @override
  void initState() {
    animTime();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextAnimation"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
            child: AnimatedDefaultTextStyle(
          duration: Duration(seconds: 2),
          style: TextStyle(fontSize: tsize, color: Colors.black),
          child: Text("Prosely"),
        )),
      ),
    );
  }
}
