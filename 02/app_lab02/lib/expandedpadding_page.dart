import 'package:flutter/material.dart';

class ExpandedPaddingPage extends StatelessWidget {
  const ExpandedPaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Usando Expanded y Padding'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.orange,
              height: 100.0,
              margin: const EdgeInsets.all(10.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.purple,
              width: 100.0,
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
