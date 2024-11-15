import 'package:flutter/material.dart';
//import './ciclo_vida_01.dart';
import './ciclo_vida_02.dart';

void main() {
  runApp(const MyApp());
}

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
      //home: const CicloVida01(),
      home: const CiCloVida02HomePage(),
    );
  }
}
