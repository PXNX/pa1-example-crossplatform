import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pa1_flutter/screen/feed.dart';
import 'dart:convert';

import 'model/article_preview.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  final String title = 'pa1-example-crossplatform';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Feed(title),
    );
  }
}



/*
class ArticlePreviewCard(

ArticlePreview articlePreview
)
=
// const ArticlePreviewCard({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return
}}

 */



