import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  //https://sika-americas.wistia.com/medias/f3q8uacexo
  //https://fast.wistia.net/embed/iframe/f3q8uacexo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Play video"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height*0.75,
        child: WebView(
          initialUrl: 'https://sika-americas.wistia.com/medias/f3q8uacexo',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {},
          onProgress: (int progress) {
            print("WebView is loading (progress : $progress%)");
          },
        ),
      ),
    );
  }
}
