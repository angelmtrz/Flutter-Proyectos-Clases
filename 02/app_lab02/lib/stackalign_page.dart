import 'package:flutter/material.dart';

class StackAlignPage extends StatelessWidget {
  const StackAlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Usando Stack y Align'),
      ),
      body: Stack(
        children: [
          Container(color: Colors.yellow, height: 200.0),
          Align(
            alignment: Alignment.topRight,
            child: Container(color: Colors.red, width: 100.0, height: 100.0),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(color: Colors.blue, width: 100.0, height: 100.0),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(color: Colors.green, width: 100.0, height: 100.0),
          ),
        ],
      ),
    );
  }
}
