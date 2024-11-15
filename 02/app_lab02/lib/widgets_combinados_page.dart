import 'package:flutter/material.dart';

class WidgetsCombinadosPage extends StatelessWidget {
  const WidgetsCombinadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Widgets Combinados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Lista de Tareas',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Agregar nueva tarea',
                border: OutlineInputBorder(),
              ),
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLength: 300,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción del botón
                debugPrint('botón presionado');
              },
              child: const Text('Agregar Tarea'),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('Tarea 1'),
                    leading: Icon(Icons.check_box),
                  ),
                  ListTile(
                    title: Text('Tarea 2'),
                    leading: Icon(Icons.indeterminate_check_box),
                  ),
                  ListTile(
                    title: Text('Tarea 3'),
                    leading: Icon(Icons.check_box_outline_blank),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
