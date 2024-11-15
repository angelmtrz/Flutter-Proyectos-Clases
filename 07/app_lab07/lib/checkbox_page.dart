import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _FormState01State();
}

class _FormState01State extends State<CheckBoxPage> {
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Stateful'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Form(
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text("Accept Terms & Conditions"),
              value: isAccepted,
              onChanged: (bool? value) {
                setState(() {
                  isAccepted = value!;
                });
              },
            ),
            // Other form elements
          ],
        ),
      ),
    );
  }
}
