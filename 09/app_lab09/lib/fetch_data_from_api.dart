import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchDataPage extends StatefulWidget {
  const FetchDataPage({super.key});

  @override
  State<FetchDataPage> createState() => _FetchDataPageState();
}

class _FetchDataPageState extends State<FetchDataPage> {
  List<dynamic> _datosApi = [];
  String url = 'https://jsonguide.technologychannel.org/quotes.json';

  //funcion para solicitar los datos del Api Rest
  Future<void> _obtenerDatosApi() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //200 OK: la solicitud tuvo éxito
      setState(() {
        _datosApi = json.decode(response.body);
      });
      //debugPrint(_datosApi.toString());
    } else {
      //La solicitud no tuvo éxito
      throw Exception('Error al obtener los datos de la API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumo de API Rest'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            /* ElevatedButton(
              onPressed: _obtenerDatosApi,
              child: const Text('Obtener Datos'),
            ),
            const SizedBox(height: 20), */
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: _datosApi.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.format_quote),
                      title: Text(
                        _datosApi[index]['text'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(_datosApi[index]['from']),
                      onTap: () {},
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        onPressed: _obtenerDatosApi,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
