import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  final int counter;
  final Function() incrementCounter;

  const CounterProvider({
    super.key,
    required this.counter,
    required this.incrementCounter,
    required super.child,
  });

  // Método para acceder a los datos compartidos
  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>()!;
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter; // Notificar si el contador ha cambiado
  }
}
