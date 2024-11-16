import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Todo App',
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<String> tasks = [];
  List<bool> taskCompleted = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Tareas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) => ListTile(
            leading: taskCompleted[index]
                ? const Icon(Icons.check_box_rounded)
                : const Icon(Icons.check_box_outline_blank_rounded),
            title: Text('${index + 1} - ${tasks[index]}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => setState(() {
                tasks.removeAt(index);
                taskCompleted.removeAt(index);
              }),
            ),
            onTap: () {
              setState(() {
                taskCompleted[index] = !taskCompleted[index];
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTask(),
        child: const Icon(Icons.add),
      ),
    );
  }

  //
  void _addTask() {
    TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Nueva Tarea'),
        content: TextField(controller: controller),
        actions: [
          MaterialButton(
            child: const Text('Agregar'),
            onPressed: () {
              setState(() {
                if (controller.text.isNotEmpty) {
                  tasks.add(controller.text);
                  taskCompleted.add(false);
                  controller.clear();
                }
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
