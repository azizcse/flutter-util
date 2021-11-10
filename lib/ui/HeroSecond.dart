import 'package:flutter/material.dart';

class HeroSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero second"),
      ),
      body: Container(
        child: Center(
          child: Hero(
            tag: 'plus',
            child: Icon(
              Icons.add,
              size: 200,
            ),
            transitionOnUserGestures: true,
            flightShuttleBuilder:
                (flightContext, animation, direction, fromContext, toContext) {
              return Icon(
                Icons.send,
                size: 150.0,
              );
            },
          ),
        ),
      ),
    );
  }
}
