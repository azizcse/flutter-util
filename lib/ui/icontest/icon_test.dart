import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconTestPage extends StatelessWidget {
  const IconTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Test"),
      ),
      body: Container(
        child: Center(
          child: Icon(
            FontAwesomeIcons.airbnb,
            size: 50,
          ),
        ),
      ),
    );
  }
}
