import 'package:flutter/material.dart';
import 'package:personalitytest/data/questions.dart';
import 'package:personalitytest/models/personalitytype.dart';
import 'package:personalitytest/screens/questionscreen.dart';
import 'package:personalitytest/screens/resultscreen.dart';
import 'package:personalitytest/screens/startscreen.dart';

void main() {
  runApp(const PersonalityTestApp());
}

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  String activeScreen = 'start-screen';
  Map<Personalitytype, int> scores = {
    Personalitytype.thinker: 0,
    Personalitytype.feeler: 0,
    Personalitytype.planner: 0,
    Personalitytype.adventurer: 0,
  };

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void selectAnswer(Personalitytype personalitytype) {
    scores[personalitytype] = scores[personalitytype]! + 1;

    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restarttest() {
    setState(() {
      scores = {
        Personalitytype.thinker: 0,
        Personalitytype.feeler: 0,
        Personalitytype.planner: 0,
        Personalitytype.adventurer: 0,
      };
      _currentQuestionIndex = 0;
      activeScreen = 'start-screen';
    });
  }

  int _currentQuestionIndex = 0;

  Personalitytype getResultPersonality() {
    return scores.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        question: questions[_currentQuestionIndex],
        onAnswerSelected: selectAnswer,
      );
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        personalitytype: getResultPersonality(),
        onRestart: restarttest,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(decoration: const BoxDecoration(), child: screenWidget),
      ),
    );
  }
}
