import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import './contador_widget.dart';
//import './inherited_widget/counter_state.dart';
//import './uso_provider/counter_model.dart';
//import './uso_provider/counter_page.dart';
import './buenas_practicas/models/counter_model.dart';
import './buenas_practicas/pages/home_page.dart';

void main() => runApp(const MyApp());

/* class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const ContadorWidget(),
      home: const CounterState(),
    );
  }
} */

/* class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Uso de Provider',
        home: CounterPage(),
      ),
    );
  }
} */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Buenas Prácticas con Provider',
        home: HomePage(),
      ),
    );
  }
}

/*
Inherited Widget

CounterProvider: Un InheritedWidget que encapsula el estado del contador 
          y la función para incrementarlo.
Constructor: Acepta el contador y la función de incremento, 
          y un conjunto con un widget hijo.
Método of(): Permite acceder a la instancia de CounterProvider desde 
          cualquier lugar del árbol.
CounterState: Un StatefulWidget que mantiene el contador. 
          En su método build(), crea un CounterProvider y pasa el estado 
          y la función de incremento como parámetros.
CounterPage: Un StatelessWidget que muestra el contador y tiene un botón 
          para incrementarlo, accediendo a los datos a través de CounterProvider.
*/
/*
Uso de Provider

ChangeNotifierProvider: Envolvemos la aplicación en un ChangeNotifierProvider 
          que proporciona acceso a CounterModel.
CounterModel: Una clase que hereda de ChangeNotifier.
          Contiene el estado del contador y un método para incrementarlo.
          Llama a notifyListeners() para notificar a cualquier widget que esté 
          escuchando que el estado ha cambiado.
CounterPage: Usa context.watch<CounterModel>() para acceder al contador y 
          reconstruir la interfaz de usuario cuando el estado cambia.
          El botón llama a context.read<CounterModel>().increment() para 
          incrementar el contador.
*/

/*
Buenas Prácticas con Provider

Organización del Manejo de Estados:
CounterModel: Una clase que maneja el estado del contador. 
            Contiene métodos para incrementar y decrementar el contador. 
            Está separada de la lógica de la interfaz de usuario, lo que promueve la modularidad.
Evitación de Duplicación de Lógica: La lógica del contador (incrementar y decrementar) 
            se encuentra en CounterModel, lo que evita duplicación en diferentes widgets.
Coherencia y Integridad de los Datos: CounterModel asegura que el contador no decremente 
            por debajo de cero, manteniendo la lógica de negocio coherente y evitando estados inválidos.
Actualizaciones Selectivas: CounterDisplay utiliza context.watch<CounterModel>() para escuchar 
            cambios en el modelo. Solo se reconstruye cuando el contador cambia, optimizando el 
            rendimiento.
            CounterButtons no necesita reconstruir su estado cuando el contador cambia, 
            lo que mejora aún más el rendimiento.
*/