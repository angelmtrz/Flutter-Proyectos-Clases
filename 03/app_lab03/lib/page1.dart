import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1'),
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Bienvenido a la Pantalla 1',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
