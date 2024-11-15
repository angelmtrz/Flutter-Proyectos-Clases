import 'package:flutter/material.dart';

class FormBasic extends StatelessWidget {
  const FormBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Basic'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              // Form fields go here
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Enter your first name',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Enter your last name',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
