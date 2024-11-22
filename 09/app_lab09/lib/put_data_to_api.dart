import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PutDataPage extends StatefulWidget {
  const PutDataPage({super.key});

  @override
  State<PutDataPage> createState() => _PutDataPageState();
}

class _PutDataPageState extends State<PutDataPage> {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  Map<String, dynamic> post = {'id': null, 'title': '', 'body': ''};

  Future<void> actualizarPost(int postId, String title, String body) async {
    final response = await http.put(
      Uri.parse('$url/$postId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(
        <String, String>{
          'title': title,
          'body': body,
        },
      ),
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      post.addAll({
        'id': responseBody['id'],
        'title': responseBody['title'],
        'body': responseBody['body']
      });
      setState(() {});

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Post actualizado: [${response.statusCode}]'),
            content: Text('ID del post: ${responseBody['id']}'),
            actions: [
              TextButton(
                child: const Text('Cerrar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      throw Exception('Error al actualizar el post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actualizar Post'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  actualizarPost(1, 'Titulo nuevo', 'Datos actualizados'),
              child: const Text('Actualizar Post'),
            ),
            const SizedBox(height: 20),
            post['title'] != '' && post['body'] != ''
                ? Column(
                    children: [
                      const Text('Post creado:'),
                      Text('ID: ${post['id']}'),
                      Text(post['title']!),
                      Text(post['body']!),
                    ],
                  )
                : const Text('No hay post'),
          ],
        ),
      ),
    );
  }
}
