import 'package:flutter/material.dart';

class SimpleInterestCalcPage extends StatefulWidget {
  const SimpleInterestCalcPage({super.key});

  @override
  State<SimpleInterestCalcPage> createState() => _SimpleInterestCalcPageState();
}

class _SimpleInterestCalcPageState extends State<SimpleInterestCalcPage> {
  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest Calculator')),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildTextField(_principalController, 'Principal'),
            _buildTextField(_rateController, 'Tasa de interés'),
            _buildTextField(_timeController, 'Años'),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: _calcularInteres,
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }

  //
  Widget _buildTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
    );
  }

  void _calcularInteres() {
    double principal = double.tryParse(_principalController.text) ?? 0.0;
    double rate = double.tryParse(_rateController.text) ?? 0.0;
    double time = double.tryParse(_timeController.text) ?? 0.0;

    double interest = principal * rate * time / 100;

    setState(() {
      result = 'El interes es: ${interest.toStringAsFixed(2)}';
    });
  }
}
