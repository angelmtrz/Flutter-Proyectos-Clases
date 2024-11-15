import 'package:flutter/material.dart';

class FormFeedback extends StatefulWidget {
  const FormFeedback({super.key});

  @override
  State<FormFeedback> createState() => _FormFeedbackState();
}

class _FormFeedbackState extends State<FormFeedback> {
  final _formKey = GlobalKey<FormState>();
  final _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Feedback'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                maxLines: 5,
                controller: _feedbackController,
                decoration: const InputDecoration(
                  hintText: 'Enter your feedback',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your feedback';
                  } else if (value.length < 10) {
                    return 'Feedback must be at least 10 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Feedback submitted successfully!')),
                    );
                    // Additional submission logic here
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
