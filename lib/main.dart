import 'package:flutter/material.dart';
import 'package:kuispraktpm/views/ListGroceries.dart';

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
      title: 'Kuis Praktikum Mobile',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListScreen(),
    );
  }
}
