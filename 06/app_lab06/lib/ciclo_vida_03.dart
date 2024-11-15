// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//Crear un InheritedWidget para compartir datos entre widgets
//Un InheritedWidget que permite compartir datos entre widgets.
//método estático of que se utiliza para acceder a los datos.
class CicloVida03Provider extends InheritedWidget {
  final String data;

  const CicloVida03Provider(
      {super.key, required this.data, required super.child});

  static CicloVida03Provider? of(BuildContext context) {
    //método estático of que se utiliza para acceder a los datos.
    //
    //dependOnInheritedWidgetOfExactType()
    //Este método se usa para acceder a un InheritedWidget ancestro.
    return context.dependOnInheritedWidgetOfExactType<CicloVida03Provider>();
  }

  @override
  bool updateShouldNotify(CicloVida03Provider oldWidget) {
    return oldWidget.data != data;
  }
}

class CicloVida03 extends StatefulWidget {
  const CicloVida03({super.key});

  @override
  State<CicloVida03> createState() => _CicloVida03State();
}

class _CicloVida03State extends State<CicloVida03> {
  String textoAMostrar = "Widget activo";

  @override
  void initState() {
    super.initState();
    debugPrint('initState: Widget inicializado');
  }

  @override
  void deactivate() {
    //Se llama cuando el widget se desactiva temporalmente.
    super.deactivate();
    debugPrint('deactivate: Widget desactivado temporalmente');
  }

  @override
  void reassemble() {
    //Se llama cuando el widget se reconstruye,
    //especialmente durante el desarrollo al hacer hot reload.
    super.reassemble();
    debugPrint('reassemble: Widget reconstruido');
  }

  @override
  Widget build(BuildContext context) {
    //Acceder a los datos del InheritedWidget
    final datos = CicloVida03Provider.of(context)?.data ?? "sin datos";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textoAMostrar),
        Text("Datos heredados: $datos"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              textoAMostrar = "Widget actualizado";
            });
          },
          child: const Text("Actualizar widget"),
        ),
      ],
    );
  }
}

//Uso del widget
class CicloVida03HomePage extends StatelessWidget {
  const CicloVida03HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CicloVida03Provider(
      data: "Datos compartidos de ciclo de vida",
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ciclo de vida de Widgets 03"),
        ),
        body: const Center(
          child: CicloVida03(),
        ),
      ),
    );
  }
}
