import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.Starttest, {super.key});

  final void Function() Starttest;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 144, 159, 172),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Discover Your Personality Type!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "💖 🗺️ \n 🗓️ 🧠",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.white),
              ),
              onPressed: Starttest,
              label: const Text(
                'Start Test',
                style: TextStyle(color: Color.fromARGB(255, 56, 54, 54)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
