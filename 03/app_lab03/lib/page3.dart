import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3'),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Bienvenido a la Pantalla 3',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
