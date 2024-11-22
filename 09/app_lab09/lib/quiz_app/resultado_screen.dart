import 'package:flutter/material.dart';
import './quiz_app.dart';

class ResultadoScreen extends StatelessWidget {
  final int puntaje;

  const ResultadoScreen({super.key, required this.puntaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puntaje'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'El puntaje obtenido es: $puntaje',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            puntaje <= 5
                ? Icon(Icons.sentiment_very_dissatisfied,
                    color: Colors.blue[200], size: 100)
                : puntaje <= 10
                    ? Icon(Icons.sentiment_neutral,
                        color: Colors.blue[500], size: 100)
                    : puntaje <= 15
                        ? Icon(Icons.sentiment_satisfied,
                            color: Colors.red[200], size: 100)
                        : Icon(Icons.sentiment_very_satisfied,
                            color: Colors.red[500], size: 100),
            const SizedBox(height: 10),
            const Text('Reinicia para intentar nuevamente',
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        onPressed: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const QuizApp(),
          ),
          (route) => false,
        ),
        tooltip: 'Reiniciar Quiz',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
