import 'package:flutter/material.dart';

class GestureDetector01 extends StatelessWidget {
  const GestureDetector01({super.key});
/*
GestureDetector: Este widget se utiliza para detectar gestos. 
          En este caso, lo envolvemos alrededor de un Container.
Eventos Implementados:
  onTap(): Se activa cuando el usuario toca el widget. 
        Aquí se muestra un SnackBar con un mensaje.
  onLongPress(): Se activa cuando el usuario mantiene 
        el toque durante un tiempo prolongado. Muestra un SnackBar.
  onDoubleTap(): Se activa cuando el usuario toca el widget 
        dos veces rápidamente. Muestra otro SnackBar.
Container: Se utiliza como área interactiva con un fondo azul y 
        texto blanco para indicar al usuario que puede tocarlo.
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Eventos básicos de gestos'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            //Detección de Tap
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Tap detectado!'),
              ),
            );
          },
          onLongPress: () {
            //Detección de LongPress
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('LongPress detectado!'),
              ),
            );
          },
          onDoubleTap: () {
            //Detección de DoubleTap
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('DoubleTap detectado!'),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(50.0),
            color: Colors.blue,
            child: const Text(
              'Tap, LongPress, DoubleTap',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
