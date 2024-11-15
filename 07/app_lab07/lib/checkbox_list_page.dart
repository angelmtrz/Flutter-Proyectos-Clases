import 'package:flutter/material.dart';

class CheckBoxListPage extends StatefulWidget {
  const CheckBoxListPage({super.key});

  @override
  State<CheckBoxListPage> createState() => _CheckBoxListPageState();
}

class _CheckBoxListPageState extends State<CheckBoxListPage> {
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  List<String> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox List'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: options.map((String option) {
          return CheckboxListTile(
            title: Text(option),
            value: selectedOptions.contains(option),
            onChanged: (bool? value) {
              setState(() {
                if (value == true) {
                  selectedOptions.add(option);
                } else {
                  selectedOptions.remove(option);
                }
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
