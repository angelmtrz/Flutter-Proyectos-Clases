import 'package:flutter/material.dart';
import './counter_page.dart';
import './counter_provider.dart';

class CounterState extends StatefulWidget {
  const CounterState({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<CounterState> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: _counter,
      incrementCounter: _incrementCounter,
      child: const CounterPage(),
    );
  }
}
