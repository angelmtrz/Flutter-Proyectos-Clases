import 'package:flutter/material.dart';

class GestureDetector02 extends StatefulWidget {
  const GestureDetector02({super.key});

  @override
  State<GestureDetector02> createState() => _GestureDetector02State();
}

class _GestureDetector02State extends State<GestureDetector02> {
  String _message = 'Realiza un gesto';

  void _onPanStart(DragStartDetails details) {
    setState(() {
      _message = 'Arrastre iniciado...';
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _message = 'Arrastrando...';
    });
  }

  void _onPanEnd(DragEndDetails details) {
    setState(() {
      _message = 'Arrastre finalizado...';
    });
  }

  void _onSwipeLeft() {
    setState(() {
      _message = 'Deslizado a la izquierda';
    });
  }

  void _onSwipeRight() {
    setState(() {
      _message = 'Deslizado a la derecha';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Detectores de gestos'),
      ),
      body: Center(
        child: GestureDetector(
          onPanStart: _onPanStart,
          onPanUpdate: _onPanUpdate,
          onPanEnd: _onPanEnd,
          onHorizontalDragEnd: (details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              _onSwipeRight();
            } else {
              _onSwipeLeft();
            }
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              _message,
              style: const TextStyle(color: Colors.white, fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
/*
Eventos Implementados:
onPanStart: Se llama cuando el usuario inicia un gesto de arrastre. 
    Actualiza el mensaje a "Arrastre iniciado".
onPanUpdate: Se llama cuando el usuario está arrastrando. 
    Actualiza el mensaje a "Arrastrando...".
onPanEnd: Se llama cuando el gesto de arrastre finaliza. 
    Actualiza el mensaje a "Arrastre finalizado".
onHorizontalDragEnd: Se utiliza para detectar deslizamientos. 
    Dependiendo de la velocidad de deslizamiento, se llama a _onSwipeLeft() o _onSwipeRight().
*/