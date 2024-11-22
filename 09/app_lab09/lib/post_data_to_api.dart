import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostDataPage extends StatefulWidget {
  const PostDataPage({super.key});

  @override
  State<PostDataPage> createState() => _PostDataPageState();
}

class _PostDataPageState extends State<PostDataPage> {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  Map<String, dynamic> post = {'id': null, 'title': '', 'body': ''};

  Future<void> crearPost(String title, String body) async {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'title': title,
        'body': body,
        'userId': '1',
      }),
    );

    if (response.statusCode == 201) {
      //Si el servidor retorna 201 CREATED, entonces el post fue creado con éxito
      final responseBody = json.decode(response.body);
      post.addAll({
        'id': responseBody['id'],
        'title': responseBody['title'],
        'body': responseBody['body']
      });
      setState(() {});
      //debugPrint(post.toString());
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Post creado!: [${response.statusCode}]'),
            content: Text('ID del post: ${responseBody['id']}'),
            actions: [
              MaterialButton(
                child: const Text('Cerrar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        },
      );
    } else {
      //Si el servidor no retorna 201, devolvemos una excepción
      throw Exception('Error al crear el post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Post'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => crearPost('Flutter', 'Enviando datos a un API'),
              child: const Text('Crear Post'),
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
