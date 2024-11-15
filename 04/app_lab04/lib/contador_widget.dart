import 'package:flutter/material.dart';

class ContadorWidget extends StatefulWidget {
  const ContadorWidget({super.key});

  @override
  State<ContadorWidget> createState() => _ContadorWidgetState();
}

class _ContadorWidgetState extends State<ContadorWidget> {
  int _counter = 0; //define estado interno

  @override
  void initState() {
    super.initState();
    //Inicialización del estado
    debugPrint('ContadorWidget inicializado!');
  }

  @override
  void dispose() {
    //limpieza del estado
    debugPrint('ContadorWidget destruido!');
    super.dispose();
  }

  void _incrementarContador() {
    setState(() {
      _counter++; //Actualiza el estado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Widget con Estado - Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador:',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _incrementarContador,
              child: const Text(
                'Incrementar',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
