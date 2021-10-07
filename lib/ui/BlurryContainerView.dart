import 'dart:ui';

import 'package:flutter/material.dart';

class BlurryContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blurry container"),
      ),
      body: Container(
        color: Colors.black,
        child: new Center(
          child: new ClipRect(
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: new Container(
                width: 200.0,
                height: 200.0,
                decoration: new BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5)),
                child: new Center(
                  child: new Text('Frosted'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
