import 'package:easy_container/easy_container.dart';
import 'package:execciseflutter/ui/HeroSecond.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: EasyContainer(
        alignment: null,
        child: Hero(
          tag: 'plus',
          child: Icon(
            Icons.add,
            size: 50,
          ),
          transitionOnUserGestures: true,
        ),
        onTap: () => Get.to(HeroSecond()),
      ),
    );
  }
}
