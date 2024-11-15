import 'package:flutter/material.dart';
//import './gesture_detector_01.dart';
//import './gesture_detector_02.dart';
import './gesture_detector_03.dart';
//import './gesture_detector_04.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const GestureDetector01(),
      //home: const GestureDetector02(),
      home: const GestureDetector03(),
      //home: const GestureDetector04(),
    );
  }
}
