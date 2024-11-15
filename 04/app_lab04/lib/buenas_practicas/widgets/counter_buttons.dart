import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            context.read<CounterModel>().decrement();
          },
          child: const Text('Decrementar'),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            context.read<CounterModel>().increment();
          },
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}
