import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_time_picker/date_time_picker.dart';

class TextLengthCheck extends StatelessWidget {
  const TextLengthCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextLength"),
      ),
      body: Center(
        child: Container(
          width: Get.width * 0.9,
          height: Get.height * 0.6,

          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Flexible(
                        child: Text(
                      "KLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL"
                      "LLLLLLLLertttttttttttttttttttttttttttttt",
                      softWrap: true,
                      maxLines: null,
                    )),
                  ),
                  Icon(
                    Icons.label,
                    size: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DateTimePicker(

                  initialValue: '',
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.red,
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 4.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
