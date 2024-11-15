import 'package:flutter/material.dart';
import './page2a.dart';

class Page1a extends StatelessWidget {
  final String data;

  const Page1a({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantala 1a'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data), // Muestra los datos recibidos
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a Screen2 pasando datos
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Page2a(message: 'Hola desde Pantalla 1'),
                  ),
                );
              },
              child: const Text('Ir a Pantalla 2'),
            ),
          ],
        ),
      ),
    );
  }
}
