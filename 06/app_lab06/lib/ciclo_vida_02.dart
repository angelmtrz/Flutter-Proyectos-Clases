import 'package:flutter/material.dart';

class CicloVida02 extends StatefulWidget {
  final String titulo;

  const CicloVida02({super.key, required this.titulo});

  @override
  State<CicloVida02> createState() => _CicloVida02State();
}

class _CicloVida02State extends State<CicloVida02> {
  String textoAMostrar = "";

  @override
  void initState() {
    super.initState();
    // Inicializa el texto de visualización
    textoAMostrar = "Titulo inicial: ${widget.titulo}";
    debugPrint(textoAMostrar);
  }

  @override
  void didUpdateWidget(covariant CicloVida02 oldWidget) {
    //Se llama cuando el widget se actualiza
    //(por ejemplo, cuando se cambia alguna de sus propiedades).
    super.didUpdateWidget(oldWidget);
    // Detecta cambios en las propiedades del widget
    if (oldWidget.titulo != widget.titulo) {
      setState(() {
        textoAMostrar = "Nuevo titulo: ${widget.titulo}";
      });
      debugPrint("Las propiedades del widget han cambiado!");
    }
  }

  @override
  void didChangeDependencies() {
    //Se llama cuando las dependencias de este widget cambian
    //(por ejemplo, si un widget padre cambia su estado).
    super.didChangeDependencies();
    // Reacciona a cambios en las dependencias del widget
    // Por ejemplo, obtener un tema o configuración
    debugPrint("Las dependencias del widget han cambiado!");
  }

  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
      appBar: AppBar(
        title: const Text("Manejo de actualizaciones de Widgets"),
      ),
      body: Center(
        child: Text(textoAMostrar),
      ),
    ); */
    return Text(textoAMostrar);
  }
}

//Uso del widget
class CiCloVida02HomePage extends StatefulWidget {
  const CiCloVida02HomePage({super.key});

  @override
  State<CiCloVida02HomePage> createState() => _CiCloVida02HomePageState();
}

class _CiCloVida02HomePageState extends State<CiCloVida02HomePage> {
  String titulo = "Título inicial";

  void _cambiarTitulo() {
    setState(() {
      titulo =
          titulo == "Título inicial" ? "Título cambiado" : "Título inicial";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ciclo de vida de Widgets 02"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CicloVida02(titulo: titulo),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _cambiarTitulo,
              child: const Text("Cambiar título"),
            ),
          ],
        ),
      ),
    );
  }
}
