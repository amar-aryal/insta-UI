import 'package:flutter/material.dart';
import 'package:photo_app/photo_page.dart';
import 'package:characters/characters.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Photo_page(),
    );
  }
}
