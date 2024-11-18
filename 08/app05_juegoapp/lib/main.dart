import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const JuegoScreen(),
    );
  }
}

class JuegoScreen extends StatefulWidget {
  const JuegoScreen({super.key});

  @override
  State<JuegoScreen> createState() => _JuegoScreenState();
}

class _JuegoScreenState extends State<JuegoScreen> {
  List<String> tablero = List.filled(9, '', growable: false);
  String jugadorActual = 'X';

  void _marcarCelda(int index) {
    if (tablero[index] == '') {
      setState(() {
        tablero[index] = jugadorActual;
        jugadorActual = jugadorActual == 'X' ? 'O' : 'X';
      });
    }
    _checkWinner();
  }

  void _reiniciarJuego() {
    setState(() {
      tablero = List.filled(9, '', growable: false);
      jugadorActual = 'X';
    });
  }

  void _checkWinner() {
    // Verificar filas
    for (int i = 0; i < 9; i += 3) {
      if (tablero[i] == tablero[i + 1] &&
          tablero[i] == tablero[i + 2] &&
          tablero[i] != '') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Ganador'),
              content: Text('El jugador ${tablero[i]} ha ganado!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _reiniciarJuego();
                  },
                  child: const Text('Reiniciar'),
                ),
              ],
            );
          },
        );
        return;
      }
    }

    // Verificar columnas
    for (int i = 0; i < 3; i++) {
      if (tablero[i] == tablero[i + 3] &&
          tablero[i] == tablero[i + 6] &&
          tablero[i] != '') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Ganador'),
              content: Text('El jugador ${tablero[i]} ha ganado!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _reiniciarJuego();
                  },
                  child: const Text('Reiniciar'),
                ),
              ],
            );
          },
        );
        return;
      }
    }

    // Verificar diagonales
    if ((tablero[0] == tablero[4] &&
            tablero[0] == tablero[8] &&
            tablero[0] != '') ||
        (tablero[2] == tablero[4] &&
            tablero[2] == tablero[6] &&
            tablero[2] != '')) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Ganador'),
            content: Text('El jugador ${tablero[4]} ha ganado!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _reiniciarJuego();
                },
                child: const Text('Reiniciar'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego del Michi'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: tablero.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _marcarCelda(index),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(tablero[index],
                      style: const TextStyle(
                          fontSize: 64, fontWeight: FontWeight.bold)),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        onPressed: _reiniciarJuego,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
