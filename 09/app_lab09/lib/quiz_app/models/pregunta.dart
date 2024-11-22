class Pregunta {
  final String pregunta;
  final List<String> respuestas;
  final String respuestaCorrecta;

  Pregunta(
      {required this.pregunta,
      required this.respuestas,
      required this.respuestaCorrecta});

  factory Pregunta.fromJson(Map<String, dynamic> json) {
    var respuestasIncorrectas = List<String>.from(json['incorrect_answers']);
    var respuestaCorrecta = json['correct_answer'];

    respuestasIncorrectas.add(respuestaCorrecta);
    respuestasIncorrectas.shuffle();

    return Pregunta(
      pregunta: json['question'],
      respuestas: respuestasIncorrectas,
      respuestaCorrecta: respuestaCorrecta,
    );
  }
}
