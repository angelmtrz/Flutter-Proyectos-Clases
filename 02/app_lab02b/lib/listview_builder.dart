import 'package:flutter/material.dart';

class ListViewBuilder01 extends StatelessWidget {
  //#2
  final List<String> items = List<String>.generate(20, (i) => "Elemento: $i");
  //#3
  final List<Tarea> tareas = List<Tarea>.generate(
      20, (i) => Tarea(titulo: "Tarea $i", subtitulo: "Subtarea $i"));
  //#4
  final List<Post> posts = [
    Post(
      username: "User 1",
      userImageUrl: "https://picsum.photos/id/237/200",
      timestamp: "1 hour ago",
      contentText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      contentImageUrl: "https://picsum.photos/id/237/200",
    ),
    Post(
      username: "User 2",
      userImageUrl: "https://picsum.photos/id/238/200",
      timestamp: "2 hours ago",
      contentText: "Sed ut perspiciatis unde omnis iste natus error sit.",
      contentImageUrl: "https://picsum.photos/id/238/200",
    ),
    Post(
      username: "User 3",
      userImageUrl: "https://picsum.photos/id/239/200",
      timestamp: "3 hours ago",
      contentText: "Ut enim ad minima veniam, quis nostrum exercitationem.",
      contentImageUrl: "https://picsum.photos/id/239/200",
    )
  ];

  ListViewBuilder01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      //#1
      /* body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item $index"),
            subtitle: Text("Subtitle $index"),
          );
        },
      ), */
      //#2 usando una lista de items
      /* body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            subtitle: Text("Subtitle $index"),
          );
        },
      ), */
      //#3 usando un modelo de datos
      /* body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tareas[index].titulo),
            subtitle: Text(tareas[index].subtitulo),
          );
        },
      ), */
      //#4
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.amber[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        posts[index].userImageUrl,
                      ),
                    ),
                    title: Text(posts[index].username),
                    subtitle: Text(posts[index].timestamp),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(posts[index].contentText),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      child: Image.network(
                        posts[index].contentImageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//modelo de datos
class Tarea {
  final String titulo;
  final String subtitulo;

  Tarea({required this.titulo, required this.subtitulo});
}

//
class Post {
  final String username;
  final String userImageUrl;
  final String timestamp;
  final String contentText;
  final String contentImageUrl;

  Post({
    required this.username,
    required this.userImageUrl,
    required this.timestamp,
    required this.contentText,
    required this.contentImageUrl,
  });
}
