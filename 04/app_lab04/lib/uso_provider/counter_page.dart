import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './counter_model.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Acceder al estado del contador
    final counter = context.watch<CounterModel>().counter;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Uso de Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Incrementar el contador
                context.read<CounterModel>().increment();
              },
              child: const Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}
