import 'package:flutter/material.dart';
import 'package:tasktask/chipizza.dart';
import 'package:tasktask/facebook.dart';
import 'package:tasktask/fries.dart';
import 'package:tasktask/twitter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      //home: ,

      routes: {
        Chipizza.routeName: (context) => const Chipizza(),
        Facebook.routeName: (context) => const Facebook(),
        Fries.routeName: (context) => const Fries(),
        Twitter.routeName: (context) => const Twitter(),
      },
    );
  }
}
