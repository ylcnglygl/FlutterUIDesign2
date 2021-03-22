import 'package:flutter/material.dart';
import 'package:flutteruidesign2/pages/daily_news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DailyNews(),
    );
  }
}
