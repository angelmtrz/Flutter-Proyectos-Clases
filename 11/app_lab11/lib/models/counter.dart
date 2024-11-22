/* Modelo de datos Counter para usar con Provider */
/* import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
} */
//
/* Modelo de datos Counter para usar con Riverpod */
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
}

final counterProvider = StateNotifierProvider<Counter, int>((ref) => Counter());
