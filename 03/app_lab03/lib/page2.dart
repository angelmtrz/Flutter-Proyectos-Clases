import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2'),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Bienvenido a la Pantalla 2',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
