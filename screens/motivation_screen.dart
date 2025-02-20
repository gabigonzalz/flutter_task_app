import 'package:flutter/material.dart';
import '../models/motivation_phrases.dart';

class MotivationScreen extends StatelessWidget {
  final motivationModel = MotivationPhrases();

  MotivationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inspiración Diaria')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              motivationModel.getRandomPhrase(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MotivationScreen()),
              ),
              child: Text('Nueva Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
