import 'package:app_lab12/services/notification_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => NotificationService.showNotification(
            title: 'Notificación',
            body: 'Esta es una prueba de notificación',
          ),
          child: const Text('Enviar notificación'),
        ),
      ),
    );
  }
}
