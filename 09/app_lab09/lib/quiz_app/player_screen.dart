import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './models/pregunta.dart';
import './resultado_screen.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  int preguntaActualIndex = 0;
  int puntaje = 0;
  List<Pregunta> preguntas = [];
  String url =
      'https://opentdb.com/api.php?amount=20&category=18&difficulty=easy&type=multiple';

  //Api para creacion de trivias
  //https://opentdb.com/api_config.php

  Future<void> traerPreguntas() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        preguntas = List<Pregunta>.from(
          data['results'].map(
            (pregunta) => Pregunta.fromJson(pregunta),
          ),
        );
      });
    } else {
      throw Exception('Error al obtener los datos de la API');
    }
  }

  void revisarRespuestas(String respuestaSeleccionada) {
    if (preguntas[preguntaActualIndex].respuestaCorrecta ==
        respuestaSeleccionada) {
      puntaje++;
    }

    if (preguntaActualIndex < preguntas.length - 1) {
      setState(() {
        preguntaActualIndex++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultadoScreen(puntaje: puntaje),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    traerPreguntas();
  }

  @override
  Widget build(BuildContext context) {
    if (preguntas.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Pregunta'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final pregunta = preguntas[preguntaActualIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Pregunta ${preguntaActualIndex + 1}'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          ListTile(
            tileColor: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.onPrimary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            title: Text('${preguntaActualIndex + 1}. ${pregunta.pregunta}'),
          ),
          const SizedBox(height: 10),
          ...pregunta.respuestas.map(
            (respuesta) => ListTile(
              splashColor: Colors.purpleAccent,
              leading: const Icon(Icons.chevron_right_rounded),
              title: Text(respuesta),
              onTap: () => revisarRespuestas(respuesta),
            ),
          ),
        ],
      ),
    );
  }
}
