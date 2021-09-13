import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SpanAbleText extends StatefulWidget {
  const SpanAbleText({Key? key}) : super(key: key);

  @override
  _SpanAbleTextState createState() => _SpanAbleTextState();
}

class _SpanAbleTextState extends State<SpanAbleText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Single tap',
                style: TextStyle(color: Colors.red[300]),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Single press");
                  },
              ),
              TextSpan(
                  text: ' Double tap',
                  style: TextStyle(color: Colors.green[300]),
                  recognizer: DoubleTapGestureRecognizer()
                    ..onDoubleTap = () {
                      print("Double press");
                    }),
              TextSpan(
                text: ' Long press',
                style: TextStyle(color: Colors.blue[300]),
                recognizer: LongPressGestureRecognizer()
                  ..onLongPress = () {
                    print("Long press");
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
