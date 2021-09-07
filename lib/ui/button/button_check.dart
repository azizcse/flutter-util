import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text('Text Button'),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    onSurface: Colors.grey,
                    elevation: 3,
                    side: BorderSide(color: Colors.black, width: 2),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    shadowColor: Colors.red),
                onPressed: () {
                  print('Pressed');
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Elevated button'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(
                child: Text('Woolha.com'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.teal,
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      StadiumBorder()),
                  side: MaterialStateProperty.resolveWith<BorderSide>(
                      (Set<MaterialState> states) {
                    final Color color = states.contains(MaterialState.pressed)
                        ? Colors.blue
                        : Colors.red;
                    return BorderSide(color: color, width: 2);
                  }),
                ),
                onPressed: () {},
                child: Text('OutlinedButton with custom shape and border'),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.focused))
                      return Colors.red;
                    if (states.contains(MaterialState.hovered))
                      return Colors.green;
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return null!; // Defer to the widget's default.
                  }),
                ),
                onPressed: () {},
                child: Text('TextButton with custom overlay colors'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
