import 'package:flutter/material.dart';
import 'package:teoir_m09/screens/combine_screen.dart';
import 'package:teoir_m09/screens/drawer_screen.dart';
import 'package:teoir_m09/screens/bottom_sheet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CombineScreen(),
    );
  }
}
