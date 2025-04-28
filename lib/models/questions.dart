import 'package:personalitytest/models/answers.dart';

class Question {
  final String text;
  final List<Answers> answers;
  Question({required this.text, required this.answers});
}
