import 'package:flutter/material.dart';
import 'package:tp/models/formulaire.dart';
import 'package:tp/models/home_page.dart';
import 'package:tp/models/second_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes:  {
        '/home': (context) => HomePage(),
        '/second' : (context) => SecondPage(),
      },
    );
  }
}
