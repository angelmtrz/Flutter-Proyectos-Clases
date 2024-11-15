import 'package:flutter/material.dart';
//import './listview01.dart';
//import './listview_builder.dart';
//import './gridview01.dart';
import './gridview_builder.dart';

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
      //home: const ListView01(),
      //home: ListViewBuilder01(),
      //home: const GridView01(),
      home: GridViewBuilder01(),
    );
  }
}
