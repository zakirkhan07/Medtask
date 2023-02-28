import 'package:flutter/material.dart';
import 'package:medapp/screens/homescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Med App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
   
  }
}
