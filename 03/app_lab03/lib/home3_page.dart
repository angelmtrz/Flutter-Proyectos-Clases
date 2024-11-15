import 'package:flutter/material.dart';

class Home3Page extends StatelessWidget {
  const Home3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('HomePage 3', style: TextStyle(fontSize: 24.0)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navegación con transición personalizada
            Navigator.of(context).push(_createRoute());
          },
          child: const Text(
            'Ir a la Pantalla Animada',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }

//desplazamiento desde la derecha
/*   Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const AnimatedScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); //Desplazamiento a la derecha
        const end = Offset.zero; //Posición final
        const curve = Curves.easeInOut; //Tipo de curva de la animación

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        //Construir la animación
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration:
          const Duration(milliseconds: 1000), // Duración de la animación
      reverseTransitionDuration:
          const Duration(milliseconds: 1000), // Duración de la animación
    );
  } */
  //desplazamiento desde abajo
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const AnimatedScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Definimos la escala y el desplazamiento
        const begin = Offset(0.0, 1.0); // Desplazamiento desde abajo
        const end = Offset.zero; // Posición final
        const curve = Curves.easeInOut; // Curva de la animación

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        // Escala la pantalla
        var scaleAnimation =
            Tween(begin: 0.5, end: 1.0).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        ));

        return SlideTransition(
          position: offsetAnimation,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: child,
          ),
        );
      },
      transitionDuration:
          const Duration(milliseconds: 1000), // Duración de la animación
      reverseTransitionDuration:
          const Duration(milliseconds: 1000), // Duración de la animación
    );
  }
  //Desplazamiento tipo bounce
/*   Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const AnimatedScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Definimos el desplazamiento y el efecto bounce
        const begin = Offset(0.0, 1.0); // Desde abajo
        const end = Offset.zero; // Posición final
        const curve = Curves.bounceIn; // Curva de rebote

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration:
          const Duration(milliseconds: 1000), // Duración de la animación
      reverseTransitionDuration:
          const Duration(milliseconds: 1000), // Duración de la animación
    );
  } */
}

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Pantalla Animada', style: TextStyle(fontSize: 24.0)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Regresar a la pantalla anterior
            Navigator.pop(context);
          },
          child: const Text(
            'Regresar',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
/*
HomeScreen: Contiene un botón que, al ser presionado, navega hacia AnimatedScreen 
            con una transición personalizada.
_createRoute(): Utiliza PageRouteBuilder para definir una ruta personalizada.
pageBuilder: Especifica qué pantalla mostrar.
transitionsBuilder: Define la animación de transición.
            Usa un Tween para animar la posición de la pantalla desde la 
            derecha hacia el centro.
SlideTransition: Aplica la animación de deslizamiento.
AnimatedScreen: Pantalla de destino que tiene un botón para regresar a la pantalla anterior.

Desplazamiento desde abajo: La pantalla se desliza desde la parte inferior (Offset(0.0, 1.0)).
Escalado: La pantalla comienza con un tamaño más pequeño (0.5) y se escala a su tamaño 
          completo (1.0) durante la transición.
ScaleTransition: Combina el desplazamiento con la escala, lo que crea un efecto de zoom 
          atractivo al entrar.
Curvas suaves: Se utilizan curvas de animación (Curves.easeInOut) para hacer que la 
          transición sea más fluida y natural.

Curva de rebote: Utiliza Curves.bounceIn para dar un efecto de rebote al entrar. 
          Esto hace que la pantalla "rebote" al llegar a su posición final.

transitionDuration: Duration(milliseconds: 800): establece la duración de la animación a 
          800 milisegundos (0.8 segundos). 
          Puedes ajustar este valor según prefieras, aumentando o disminuyendo para hacerla 
          más lenta o más rápida.
*/