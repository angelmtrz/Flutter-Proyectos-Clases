import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                'https://cdn11.bigcommerce.com/s-csqcv5l47s/products/2171/images/4867/Marvel_IronMan_L3D_07-min__07603.1706137924.1280.1280.png'),
          ),
          const SizedBox(height: 20),
          Text(
            'Angel Marthans Ruiz',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Docente de la FISI UNAP',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 4.0,
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('Fecha de Nacimiento'),
                  subtitle: Text('25/02/1981'),
                ),
                ListTile(
                  leading: const Icon(Icons.web),
                  title: const Text('Sitio Web'),
                  subtitle: const Text('terasistemasperu.com'),
                  onTap: () {},
                ),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('angelmtrz@gmail.com'),
                ),
                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Ubicación'),
                  subtitle: Text('Iquitos, Perú'),
                ),
                const ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Educación'),
                  subtitle: Text('Ingeniero de Sistemas'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {},
                color: Colors.blue,
                tooltip: 'Facebook',
              ),
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {},
                color: Colors.blue,
                tooltip: 'LinkedIn',
              ),
              IconButton(
                icon: const Icon(Icons.code),
                onPressed: () {},
                color: Colors.black,
                tooltip: 'GitHub',
              ),
              IconButton(
                icon: const Icon(Icons.youtube_searched_for_rounded),
                onPressed: () {},
                color: Colors.red,
                tooltip: 'Youtube',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
