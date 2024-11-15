import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); // Notificar a todos los oyentes
  }

  void decrement() {
    if (_counter > 0) {
      _counter--;
      notifyListeners(); // Notificar a todos los oyentes
    }
  }
}
