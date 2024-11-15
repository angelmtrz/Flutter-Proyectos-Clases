import 'package:flutter/material.dart';

class GestureDetector03 extends StatefulWidget {
  const GestureDetector03({super.key});

  @override
  State<GestureDetector03> createState() => _GestureDetector03State();
}

class _GestureDetector03State extends State<GestureDetector03> {
  bool _isTapped = false;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Gesture Detector 03'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          color: _isTapped ? Colors.blue : Colors.red,
          height: _isExpanded ? 200.0 : 100.0,
          width: _isExpanded ? 200.0 : 100.0,
          padding:
              _isTapped ? const EdgeInsets.all(20.0) : const EdgeInsets.all(0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isTapped = !_isTapped;
                _isExpanded = !_isExpanded;
              });
            },
            child: const Center(
              child: Text(
                'Tap!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
