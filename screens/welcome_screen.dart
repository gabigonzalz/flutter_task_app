import 'package:flutter/material.dart';
import 'task_list_screen.dart';
import 'motivation_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenido')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('¡Bienvenido a tu organizador de tareas!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskListScreen()));
              },
              child: Text('Lista de Tareas'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MotivationScreen()));
              },
              child: Text('Inspiración Diaria'),
            ),
          ],
        ),
      ),
    );
  }
}

    //String greeting;
    //final now = DateTime.now();
    //if (now.hour > 12) {
      //greeting = 'Buenas noches';
    //} else {
      //greeting = 'Buenos dias';
    //}