import 'package:flutter/material.dart';
import 'package:twitterclone/detailtweetscreen.dart';
import 'package:twitterclone/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
      routes: {
        Detailtweetscreen.routename : (ctx) => const Detailtweetscreen()
      },
    );
  }
}