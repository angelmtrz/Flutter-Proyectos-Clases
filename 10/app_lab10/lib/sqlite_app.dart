import 'package:flutter/material.dart';
import './models/course.dart';
import './helpers/database_helper.dart';

class SqliteApp extends StatelessWidget {
  const SqliteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.amber,
              accentColor: Colors.amberAccent,
              backgroundColor: Colors.white)),
      home: const CourseListPage(),
    );
  }
}

class CourseListPage extends StatefulWidget {
  const CourseListPage({super.key});

  @override
  State<CourseListPage> createState() => _CourseListPageState();
}

class _CourseListPageState extends State<CourseListPage> {
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _instructorController = TextEditingController();
  List<Course> _courses = [];

  @override
  void initState() {
    super.initState();
    _loadCourses();
  }

  Future<void> _loadCourses() async {
    List<Course> courses = await _databaseHelper.getCourses();
    setState(() {
      _courses = courses;
    });
  }

  Future<void> _addCourse() async {
    if (_titleController.text.isNotEmpty &&
        _instructorController.text.isNotEmpty) {
      await _databaseHelper.insertCourse(Course(
        title: _titleController.text,
        instructor: _instructorController.text,
      ));
      _titleController.clear();
      _instructorController.clear();
      _loadCourses();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Cursos - SQLite'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Curso'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: TextField(
              controller: _instructorController,
              decoration: const InputDecoration(labelText: 'Instructor'),
            ),
          ),
          ElevatedButton(
            onPressed: _addCourse,
            child: const Text('Agregar'),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _courses.length,
                itemBuilder: (context, index) {
                  final course = _courses[index];
                  return ListTile(
                    title: Text(course.title),
                    subtitle: Text(course.instructor),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
