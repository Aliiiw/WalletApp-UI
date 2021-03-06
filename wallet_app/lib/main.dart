import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weekly Analyse',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const HomeScreen(),
    );
  }
}




