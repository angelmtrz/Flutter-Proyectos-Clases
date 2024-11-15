import 'package:flutter/material.dart';

class GridView01 extends StatelessWidget {
  const GridView01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView01'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      //#1
      /* body: GridView.count(
        crossAxisCount: 3,
        children: [
          Image.network("https://picsum.photos/id/237/300/300"),
          Image.network("https://picsum.photos/id/238/300/300"),
          Image.network("https://picsum.photos/id/239/300/300"),
          Image.network("https://picsum.photos/id/240/300/300"),
          Image.network("https://picsum.photos/id/241/300/300"),
          Image.network("https://picsum.photos/id/242/300/300"),
        ],
      ), */
      //#2
      /* body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/237/175/125"),
                ),
                const Text("Producto 1"),
                const Text("Precio: \$100.00"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/238/175/125"),
                ),
                const Text("Producto 2"),
                const Text("Precio: \$99.00"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/239/175/125"),
                ),
                const Text("Producto 3"),
                const Text("Precio: \$120.00"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/240/175/125"),
                ),
                const Text("Producto 4"),
                const Text("Precio: \$57.00"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/237/175/125"),
                ),
                const Text("Producto 1"),
                const Text("Precio: \$100.00"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/238/175/125"),
                ),
                const Text("Producto 2"),
                const Text("Precio: \$99.00"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/239/175/125"),
                ),
                const Text("Producto 3"),
                const Text("Precio: \$120.00"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network("https://picsum.photos/id/240/175/125"),
                ),
                const Text("Producto 4"),
                const Text("Precio: \$57.00"),
              ],
            ),
          ),
        ],
      ), */
      //#3
      body: GridView.count(
        crossAxisCount: 2,
        /* mainAxisSpacing: 5,
        crossAxisSpacing: 5, */
        children: [
          MaterialButton(
            onPressed: () {},
            color: Colors.amberAccent,
            textColor: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.category, size: 40),
                Text("CATEGORIAS"),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.purpleAccent,
            textColor: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_box, size: 40),
                Text("PRODUCTOS"),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.redAccent,
            textColor: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.category, size: 40),
                Text("CATEGORIAS"),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.indigoAccent,
            textColor: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_box, size: 40),
                Text("PRODUCTOS"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
