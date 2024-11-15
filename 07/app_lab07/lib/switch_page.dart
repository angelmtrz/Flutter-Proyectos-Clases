import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  Map<String, bool> settings = {
    'Wi-Fi': true,
    'Bluetooth': false,
    'Airplane Mode': false,
    'Mobile Data': true,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: settings.keys.map((String key) {
          return SwitchListTile(
            title: Text(key),
            value: settings[key]!,
            onChanged: (bool value) {
              setState(() {
                settings[key] = value;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
