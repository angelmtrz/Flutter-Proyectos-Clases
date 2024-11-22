import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './models/book.dart';

class HiveBooksApp extends StatefulWidget {
  const HiveBooksApp({super.key});

  @override
  State<HiveBooksApp> createState() => _HiveBooksAppState();
}

class _HiveBooksAppState extends State<HiveBooksApp> {
  final Box<Book> _librosBox = Hive.box<Book>('books');
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _autorController = TextEditingController();
  bool _edit = false;
  int? _editIndex;

  void _guardarLibro(int? index) {
    final String titulo = _tituloController.text;
    final String autor = _autorController.text;

    if (_edit) {
      _librosBox.putAt(index!, Book(title: titulo, author: autor));
      _edit = false;
    } else {
      if (titulo.isNotEmpty && autor.isNotEmpty) {
        final Book nuevoLibro = Book(title: titulo, author: autor);
        _librosBox.add(nuevoLibro);
      }
    }

    _autorController.clear();
    _tituloController.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hive app"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: TextField(
                controller: _tituloController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Título'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: TextField(
                controller: _autorController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Autor'),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _edit
                  ? () => _guardarLibro(_editIndex)
                  : () => _guardarLibro(null),
              child: _edit ? const Text('Editar') : const Text('Agregar'),
            ),
            const SizedBox(height: 10),
            _librosBox.isNotEmpty
                ? const Text('Lista de Libros', style: TextStyle(fontSize: 20))
                : const SizedBox(),
            const SizedBox(height: 10),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: _librosBox.listenable(),
                builder: (context, Box<Book> box, _) {
                  final libros = box.values.toList();

                  return ListView.builder(
                    itemCount: libros.length,
                    itemBuilder: (context, index) {
                      final libro = libros[index];
                      return ListTile(
                        leading: const Icon(Icons.book),
                        title: Text(libro.title),
                        subtitle: Text(libro.author),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _tituloController.text = libro.title;
                                _autorController.text = libro.author;
                                _edit = true;
                                _editIndex = index;
                                setState(() {});
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                box.deleteAt(index);
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
