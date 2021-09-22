import 'package:flutter/material.dart';
import 'package:pa1_flutter/screen/feed.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  final String title = 'pa1-example-crossplatform';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: title, home: Feed(title));
  }
}