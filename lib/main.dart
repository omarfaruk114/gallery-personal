import 'package:flutter/material.dart';
import 'package:galleryapp/log_in.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      home: LogIn(),
    );
  }
}
