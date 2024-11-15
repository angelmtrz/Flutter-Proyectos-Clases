import 'package:flutter/material.dart';

class ComplexLayoutPage extends StatelessWidget {
  const ComplexLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: const Text('Layout Complejo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.green),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.blue)),
                      Expanded(child: Container(color: Colors.red)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.orangeAccent,
              ),
              height: 50,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
