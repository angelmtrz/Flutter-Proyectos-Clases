import 'package:flutter/material.dart';

class CicloVida01 extends StatefulWidget {
  const CicloVida01({super.key});

  @override
  State<CicloVida01> createState() => _CicloVida01State();
}

class _CicloVida01State extends State<CicloVida01> {
  String? data;

  void _loadData() {
    data = "Datos cargados...";
    setState(() {});
  }

  @override
  void initState() {
    /*
    Se llama cuando el widget se inserta en el árbol de widgets.
    Aquí se utiliza para inicializar datos o suscribirse a eventos.
    */
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      _loadData();
    });
  }

  @override
  void dispose() {
    /*
    Se llama cuando el widget se elimina del árbol de widgets.
    Aquí es donde se liberan recursos, cancelas suscripciones o controladores.  
    */
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CIclo de Vida de Widgets"),
      ),
      body: Center(
        child: data == null ? const CircularProgressIndicator() : Text(data!),
      ),
    );
  }
}
