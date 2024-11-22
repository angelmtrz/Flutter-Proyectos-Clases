import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageApp extends StatefulWidget {
  const SecureStorageApp({super.key});

  @override
  State<SecureStorageApp> createState() => _SecureStorageAppState();
}

class _SecureStorageAppState extends State<SecureStorageApp> {
  final FlutterSecureStorage _almacenamiento = const FlutterSecureStorage();
  String _dataAlmacenada = '';
  final TextEditingController _controller = TextEditingController();

  //Guardar datos
  Future<void> _guardarData() async {
    //La clave (key) es fundamental para interactuar con el almacenamiento seguro,
    //ya que te permite organizar, acceder y gestionar los datos almacenados
    //de manera eficiente y segura.
    String key = 'mi_clave_segura';
    String value = _controller.text;

    await _almacenamiento.write(key: key, value: value);
    _controller.clear();
    _cargarData();
  }

  //Cargar datos
  Future<void> _cargarData() async {
    String key = 'secure_key';
    String? value = await _almacenamiento.read(key: key);
    setState(() {
      _dataAlmacenada = value ?? 'Sin datos.';
    });
  }

  //Eliminar datos
  Future<void> _eliminarData() async {
    String key = 'secure_key';
    await _almacenamiento.delete(key: key);
    _cargarData(); //Actualizar la vista despues de eliminar
  }

  @override
  void initState() {
    super.initState();
    _cargarData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Secure Storage"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Ingrese datos:',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _guardarData,
                child: const Text('Guardar Datos'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _eliminarData,
                child: const Text('Eliminar Datos'),
              ),
              const SizedBox(height: 20),
              Text('Datos almacenados: $_dataAlmacenada'),
            ],
          ),
        ),
      ),
    );
  }
}
