import 'package:flutter/material.dart';
import './pages/simpleinterestcalc_page.dart';

void main() => runApp(const SimpleInterestCalcApp());

class SimpleInterestCalcApp extends StatelessWidget {
  const SimpleInterestCalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Interest Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SimpleInterestCalcPage(),
    );
  }
}
