import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:get_storage/get_storage.dart';

class RichTextEditors extends StatefulWidget {
  const RichTextEditors({Key? key}) : super(key: key);

  @override
  _RichTextEditorState createState() => _RichTextEditorState();
}

class _RichTextEditorState extends State<RichTextEditors> {
  QuillController _controller = QuillController.basic();
  GetStorage _storage = GetStorage();

  @override
  void initState() {
    loadPreviousJson();
    super.initState();
  }

  void loadPreviousJson() {
    String jsonStr = _storage.read("key_json");

    if (jsonStr == null || jsonStr.isEmpty) return;

    var jsonToLoad = jsonDecode(jsonStr);
    _controller = QuillController(
        document: Document.fromJson(jsonToLoad),
        selection: TextSelection.collapsed(offset: 0));
  }

  void _printJson() {
    var json = jsonEncode(_controller.document.toDelta().toJson());
    print("EditorValue  : Json ${json}");
    _storage.write("key_json", json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        actions: [
          InkWell(
            onTap: () {
              _printJson();
            },
            child: Icon(
              Icons.save_alt_outlined,
              color: Colors.amber,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            QuillToolbar.basic(controller: _controller),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: QuillEditor.basic(
                  controller: _controller,
                  readOnly: false, // true for view only mode
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
