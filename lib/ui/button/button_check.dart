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
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
              SizedBox(height: 30,),
              OutlinedButton(
                child: Text('Woolha.com'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.teal,
                ),
                onPressed: () {
                  print('Pressed');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
