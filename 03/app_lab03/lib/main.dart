import 'package:flutter/material.dart';
/* import './home_page.dart';
import './page1.dart';
import './page2.dart';
import './page3.dart'; */
//import './home2_page.dart';
import './home3_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /* return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Rutas con nombre',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/page1': (context) => const Page1(),
        '/page2': (context) => const Page2(),
        '/page3': (context) => const Page3(),
      },
    ); */
    /* return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Rutas anónimas',
      home: Home2Page(),
    ); */
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Transiciones',
      home: Home3Page(),
    );
  }
}
