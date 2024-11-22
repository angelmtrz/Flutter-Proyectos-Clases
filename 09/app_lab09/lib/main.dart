import 'package:flutter/material.dart';
//import './fetch_data_from_api.dart';
//import './post_data_to_api.dart';
//import './put_data_to_api.dart';
//import './delete_data_from_api.dart';
import './quiz_app/quiz_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const FetchDataPage(),
      //home: const PostDataPage(),
      //home: const PutDataPage(),
      //home: const DeleteDataPage(),
      home: const QuizApp(),
    );
  }
}
