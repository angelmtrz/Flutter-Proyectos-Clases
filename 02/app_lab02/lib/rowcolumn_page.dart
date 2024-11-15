import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Usando Row y Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(color: Colors.red, width: 50.0, height: 50.0),
              Container(color: Colors.green, width: 50.0, height: 50.0),
              Container(color: Colors.blue, width: 50.0, height: 50.0),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Esto es un texto centrado',
                style: Theme.of(context).textTheme.headlineLarge),
          ),
        ],
      ),
    );
  }
}
