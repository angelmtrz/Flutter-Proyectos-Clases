import 'dart:math';

import 'package:flutter/material.dart';

class GridViewBuilder01 extends StatelessWidget {
  GridViewBuilder01({super.key});

  /* final List<String> imagenes = [
    "https://picsum.photos/200/200?random=1",
    "https://picsum.photos/200/200?random=2",
    "https://picsum.photos/200/200?random=3",
    "https://picsum.photos/200/200?random=4",
    "https://picsum.photos/200/200?random=5",
    "https://picsum.photos/200/200?random=6",
    "https://picsum.photos/200/200?random=7",
    "https://picsum.photos/200/200?random=8",
    "https://picsum.photos/200/200?random=9",
    "https://picsum.photos/200/200?random=10",
    "https://picsum.photos/200/200?random=1",
    "https://picsum.photos/200/200?random=2",
    "https://picsum.photos/200/200?random=3",
    "https://picsum.photos/200/200?random=4",
    "https://picsum.photos/200/200?random=5",
    "https://picsum.photos/200/200?random=1",
    "https://picsum.photos/200/200?random=2",
    "https://picsum.photos/200/200?random=3",
    "https://picsum.photos/200/200?random=4",
    "https://picsum.photos/200/200?random=5",
  ]; */
  final List<Producto> productoss = List<Producto>.generate(
    20,
    (index) => Producto(
      nombre: "Producto ${index + 1}",
      precio: Random().nextInt(1000),
      imagen: "https://picsum.photos/200/150?random=${index + 1}",
    ),
  );
  /* final List<Producto> productos = [
    Producto(
      nombre: "Producto 1",
      precio: 100,
      imagen: "https://picsum.photos/200/150?random=1",
    ),
    Producto(
      nombre: "Producto 2",
      precio: 200,
      imagen: "https://picsum.photos/200/150?random=2",
    ),
    Producto(
      nombre: "Producto 3",
      precio: 300,
      imagen: "https://picsum.photos/200/150?random=3",
    ),
    Producto(
      nombre: "Producto 4",
      precio: 400,
      imagen: "https://picsum.photos/200/150?random=4",
    ),
    Producto(
      nombre: "Producto 5",
      precio: 500,
      imagen: "https://picsum.photos/200/150?random=5",
    ),
    Producto(
      nombre: "Producto 6",
      precio: 600,
      imagen: "https://picsum.photos/200/150?random=6",
    ),
    Producto(
      nombre: "Producto 7",
      precio: 700,
      imagen: "https://picsum.photos/200/150?random=7",
    ),
    Producto(
      nombre: "Producto 8",
      precio: 800,
      imagen: "https://picsum.photos/200/150?random=8",
    ),
    Producto(
      nombre: "Producto 9",
      precio: 900,
      imagen: "https://picsum.photos/200/150?random=9",
    ),
    Producto(
      nombre: "Producto 10",
      precio: 1000,
      imagen: "https://picsum.photos/200/150?random=10",
    ),
  ]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView Builder'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        //#1
        /* body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GridTile(
            child: Center(
              child: Text("Item $index"),
            ),
          );
        },
      ), */
        //#2
        /* body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: imagenes.length,
        itemBuilder: (context, index) {
          return Image.network(imagenes[index]);
        },
      ), */
        //#3
        /* body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: index % 2 == 0
                  ? const Text(
                      "X",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : const Text(
                      "O",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          );
        },
      ), */
        //#4 usando modelo de datos
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: productoss.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(productoss[index].imagen),
                  ),
                  Text(productoss[index].nombre),
                  Text("\$ ${productoss[index].precio}"),
                ],
              ),
            );
          },
        ));
  }
}

//#4
//modelo de datos
class Producto {
  final String nombre;
  final String imagen;
  final int precio;

  Producto({
    required this.nombre,
    required this.imagen,
    required this.precio,
  });
}
