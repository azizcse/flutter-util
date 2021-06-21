import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';

class EasyContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Easy container"),
      ),
      body: Container(
        child: Center(
          child: EasyContainer(
            width: 100,
            height: 100,
            child: Text("Hello easy container"),
            color: Colors.amber,
            elevation: 3,
            onTap: (){
              print("Cliecked");
            },
            shadowColor: Colors.black,
            showBorder: true,
            borderColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
