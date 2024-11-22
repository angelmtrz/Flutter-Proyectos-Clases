import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteDataPage extends StatefulWidget {
  const DeleteDataPage({super.key});

  @override
  State<DeleteDataPage> createState() => _DeleteDataPageState();
}

class _DeleteDataPageState extends State<DeleteDataPage> {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  //int? postId;

  Future<void> eliminarPost(int postId) async {
    final response = await http.delete(Uri.parse('$url/$postId'));

    if (response.statusCode == 200) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Respuesta: [${response.statusCode}]'),
            content: const Text('Post eliminado!'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        },
      );
    } else {
      throw Exception('Error al eliminar el post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eliminar Post'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => eliminarPost(1),
              child: const Text('Eliminar Post'),
            ),
          ],
        ),
      ),
    );
  }
}
