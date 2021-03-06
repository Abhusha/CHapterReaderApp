import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReaderScreen extends StatefulWidget {
  //const ReaderScreen({ Key? key }) : super(key: key);

  final int chapterID;
  ReaderScreen(this.chapterID);

  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}

WebViewController _controller;

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter' + widget.chapterID.toString()),
      ),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webviewController) {
          _controller = webviewController;
          _loadHtmlCh1();
        },
      ),
    );
  }
}

_loadHtmlCh1() async {
  String fileText = await rootBundle.loadString("assets/ch1.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

//assets\ch2.html
_loadHtmlCh2() async {
  String fileText = await rootBundle.loadString("assets\ch2.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}
