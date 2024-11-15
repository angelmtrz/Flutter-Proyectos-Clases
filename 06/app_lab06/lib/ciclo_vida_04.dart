import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Modelo que representa el estado de la aplicación
class AppState with ChangeNotifier {
  String _data = 'Datos iniciales';

  String get data => _data;

  Future<void> loadData() async {
    // Simulamos una carga de datos con un retraso
    await Future.delayed(const Duration(seconds: 2));
    _data = 'Datos actualizados';
    notifyListeners(); // Notifica a los listeners sobre el cambio
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Cargar datos al iniciar el widget
    Provider.of<AppState>(context, listen: false).loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buenas Prácticas en Flutter'),
      ),
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          return Center(
            child: Text(appState.data),
          );
        },
      ),
    );
  }
}
