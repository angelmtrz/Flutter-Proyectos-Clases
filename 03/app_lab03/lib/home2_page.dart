import 'package:flutter/material.dart';
import './page1a.dart';

class Home2Page extends StatelessWidget {
  const Home2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Rutas anónimas con envío de parámetros',
              style: TextStyle(fontSize: 18.0)),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navegación anónima a Page1a con datos
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Page1a(data: 'Hola desde la Pantalla Principal'),
                  ),
                );
              },
              child: const Text('Ir a Pantalla 1'),
            ),
          ),
        ],
      ),
    );
  }
}
