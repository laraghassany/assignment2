import 'package:flutter/material.dart';
import 'package:personalitytest/models/personalitytype.dart';

class ResultScreen extends StatelessWidget {
  final Personalitytype personalitytype;
  final VoidCallback onRestart;

  ResultScreen({required this.personalitytype, required this.onRestart});

  final Map<Personalitytype, String> messages = {
    Personalitytype.feeler:
        'You are a Feeler \n💖\n Empathetic, warm, and guided by emotion.',
    Personalitytype.thinker:
        'You are a Thinker \n🧠\n Logical, curious, and focused on ideas.',
    Personalitytype.planner:
        'You are a Planner \n🗓️\n Organized, strategic, and goal-oriented.',
    Personalitytype.adventurer:
        'You are an Adventurer \n🗺️\n Spontaneous, bold, and always exploring.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 144, 159, 172),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              messages[personalitytype] ?? '',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.white),
              ),
              onPressed: onRestart,

              label: const Text(
                'Restart Test',

                style: TextStyle(color: Color.fromARGB(255, 56, 54, 54)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
