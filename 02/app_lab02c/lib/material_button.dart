import 'package:flutter/material.dart';

class MaterialButton01 extends StatelessWidget {
  const MaterialButton01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Buttons"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Material Button",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Material Button simple"),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              textColor: Colors.white,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 10),
                  Text("Material Button con ícono"),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Text("Material Button esquinas redondeadas"),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 5,
              child: const Text("Material Button con elevación"),
            ),
            const MaterialButton(
              onPressed: null,
              child: Text("Material Button deshabilitado"),
            ),
            MaterialButton(
              onPressed: () {},
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.red],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Container(
                  constraints:
                      const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "Material Button con gradiente",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Elevated Button",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button simple'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Elevated Button con ícono'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.green),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                textStyle: WidgetStateProperty.all(
                  const TextStyle(fontSize: 20),
                ),
              ),
              child: const Text('Elevated Button personalizado'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: const Text('Elevated Button esquinas redondeadas'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                elevation: WidgetStateProperty.all(10),
              ),
              child: const Text('Elevated Button con elevación'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button deshabilitado'),
            ),
            Text(
              "Icon Button",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
              color: Colors.purple,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.alarm),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info),
              tooltip: 'More Info',
            ),
            const IconButton(
              icon: Icon(Icons.block),
              onPressed: null,
            ),
            Text(
              "Outlined Button",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button simple'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Outlined Button con ícono'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green, width: 2),
                textStyle: const TextStyle(fontSize: 20),
                foregroundColor: Colors.green,
              ),
              child: const Text('Outlined Button personalizado'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Outlined Button esquinas redondeadas'),
            ),
            const OutlinedButton(
              onPressed: null,
              child: Text('Outlined Button deshabilitado'),
            ),
            Text(
              "Text Button",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button simple'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.info),
              label: const Text('Text Button con ícono'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.yellow,
              ),
              child: const Text('Text Button personalizado'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(decoration: TextDecoration.underline),
              ),
              child: const Text('Text Button subrayado'),
            ),
            const TextButton(
              onPressed: null,
              child: Text('Text Button deshabilitado'),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(Icons.phone, color: Colors.white),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            mini: true,
            onPressed: () {},
            child: const Icon(Icons.star),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Agregar'),
          )
        ],
      ),
    );
  }
}
