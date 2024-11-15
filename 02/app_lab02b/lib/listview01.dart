import 'package:flutter/material.dart';

class ListView01 extends StatelessWidget {
  const ListView01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///#1
      /* body: ListView(
        children: const [
          ListTile(
            title: Text("Comprar víveres"),
            subtitle: Text("Ir al mercado a las 6am"),
          ),
          ListTile(
            title: Text("Hacer deporte"),
            subtitle: Text("Ir al gym a las 10am"),
          ),
          ListTile(
            title: Text("Estudiar"),
            subtitle: Text("Ir a clases a las 3pm"),
          ),
          ListTile(
            title: Text("Comprar víveres"),
            subtitle: Text("Ir al mercado a las 6am"),
          ),
          ListTile(
            title: Text("Hacer deporte"),
            subtitle: Text("Ir al gym a las 10am"),
          ),
          ListTile(
            title: Text("Estudiar"),
            subtitle: Text("Ir a clases a las 3pm"),
          ),
          ListTile(
            title: Text("Comprar víveres"),
            subtitle: Text("Ir al mercado a las 6am"),
          ),
          ListTile(
            title: Text("Hacer deporte"),
            subtitle: Text("Ir al gym a las 10am"),
          ),
          ListTile(
            title: Text("Estudiar"),
            subtitle: Text("Ir a clases a las 3pm"),
          ),
          ListTile(
            title: Text("Comprar víveres"),
            subtitle: Text("Ir al mercado a las 6am"),
          ),
          ListTile(
            title: Text("Hacer deporte"),
            subtitle: Text("Ir al gym a las 10am"),
          ),
          ListTile(
            title: Text("Estudiar"),
            subtitle: Text("Ir a clases a las 3pm"),
          ),
        ],
      ), */
      ///#2
      /* body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John Doe'),
            subtitle: Text('555-555-5555'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Jane Doe'),
            subtitle: Text('555-555-5555'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John Smith'),
            subtitle: Text('555-555-5555'),
            trailing: Icon(Icons.call),
          ),
        ],
      ), */
      ///#3
      /* body: ListView(
        children: [
          Image.network('https://picsum.photos/250?image=9'),
          Image.network('https://picsum.photos/250?image=10'),
          Image.network('https://picsum.photos/250?image=11'),
          Image.network('https://picsum.photos/250?image=12'),
          Image.network('https://picsum.photos/250?image=13'),
          Image.network('https://picsum.photos/250?image=14'),
          Image.network('https://picsum.photos/250?image=15'),
        ],
      ), */
      /// #4
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Card(
              elevation: 3,
              color: Colors.blue[100],
              shadowColor: Colors.blue[900],
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=9"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Titulo de la imagen",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("Sub título dela imagen",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=10"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Titulo de la imagen",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("Sub título dela imagen",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=11"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Titulo de la imagen",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("Sub título dela imagen",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=12"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Titulo de la imagen",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("Sub título dela imagen",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=13"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Titulo de la imagen",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("Sub título dela imagen",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=14"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Titulo de la imagen",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("Sub título dela imagen",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/250?image=15"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Titulo de la imagen",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text("Sub título dela imagen",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
