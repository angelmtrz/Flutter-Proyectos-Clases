import 'package:flutter/material.dart';

class Page2a extends StatelessWidget {
  final String message;

  const Page2a({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantala 2a'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(message), // Muestra el mensaje recibido
      ),
    );
  }
}
