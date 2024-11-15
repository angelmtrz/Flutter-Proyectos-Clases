import 'package:flutter/material.dart';

class TextIconElevatedButtonPage extends StatelessWidget {
  const TextIconElevatedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Text, Icon, ElevatedButton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Hola, Flutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const Icon(Icons.favorite, color: Colors.red, size: 50),
            ElevatedButton(
              onPressed: () {
                // Acción del botón
                debugPrint('botón presionado');
              },
              child: const Text('Presionar'),
            ),
          ],
        ),
      ),
    );
  }
}
