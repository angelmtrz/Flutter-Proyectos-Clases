import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index],
              style: const TextStyle(fontSize: 18.0),
            ),
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              debugPrint('Item $index presionado');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Item ${index + 1} presionado',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  duration: const Duration(seconds: 3),
                  backgroundColor: Colors.blueAccent,
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.all(20.0),
                  shape: const StadiumBorder(),
                  action: SnackBarAction(
                    label: 'OK',
                    textColor: Colors.white,
                    onPressed: () {
                      debugPrint('OK presionado');
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
