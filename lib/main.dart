import 'package:flutter/material.dart';
import 'package:lottery/MyHomeScreen.dart';

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
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(color: Colors.teal),
      ),
      home: const MyHomeScreen(),
    );
  }
}


