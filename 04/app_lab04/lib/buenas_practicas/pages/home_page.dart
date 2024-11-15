import 'package:flutter/material.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Buenas Prácticas con Provider'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CounterDisplay(), CounterButtons()],
      ),
    );
  }
}
