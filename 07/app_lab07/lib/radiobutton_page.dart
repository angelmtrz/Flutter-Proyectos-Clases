import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({super.key});

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  Difficulty? _selectedDifficulty = Difficulty.easy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Stateful'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        // Radio buttons
        children: Difficulty.values
            .map((option) => RadioListTile<Difficulty>(
                  title: Text(option.text),
                  value: option,
                  groupValue: _selectedDifficulty,
                  onChanged: (value) {
                    setState(() {
                      _selectedDifficulty = value;
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}

enum Difficulty {
  easy("Easy"),
  medium("Medium"),
  hard("Hard");

  // Members
  final String text;
  const Difficulty(this.text);
}
