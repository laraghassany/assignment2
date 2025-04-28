import 'package:personalitytest/models/answers.dart';
import 'package:personalitytest/models/personalitytype.dart';
import 'package:personalitytest/models/questions.dart';

final List<Question> questions = [
  Question(
    text: 'How do you approach a difficult decision?',
    answers: [
      Answers(
        text: 'Analyze all options logically',
        personalitytype: Personalitytype.thinker,
      ),
      Answers(
        text: 'Go with what feels right emotionally',
        personalitytype: Personalitytype.feeler,
      ),
      Answers(
        text: 'Make a checklist and plan it out',
        personalitytype: Personalitytype.planner,
      ),
      Answers(
        text: 'Take a leap and deal with results later',
        personalitytype: Personalitytype.adventurer,
      ),
    ],
  ),
  Question(
    text: 'What excites you the most?',
    answers: [
      Answers(
        text: ' Solving complex problems',
        personalitytype: Personalitytype.thinker,
      ),
      Answers(
        text: 'Connecting deeply with others ',
        personalitytype: Personalitytype.feeler,
      ),
      Answers(
        text: 'Creating a clear path to your goals',
        personalitytype: Personalitytype.planner,
      ),
      Answers(
        text: 'Exploring something new ',
        personalitytype: Personalitytype.adventurer,
      ),
    ],
  ),

  Question(
    text: 'Which best describes your work style?',
    answers: [
      Answers(
        text: ' Detail-focused and logical ',
        personalitytype: Personalitytype.thinker,
      ),
      Answers(
        text: 'People-centered and intuitive',
        personalitytype: Personalitytype.feeler,
      ),
      Answers(
        text: 'Organized and systematic',
        personalitytype: Personalitytype.planner,
      ),
      Answers(
        text: 'Flexible and spontaneous',
        personalitytype: Personalitytype.adventurer,
      ),
    ],
  ),
  Question(
    text: 'How do you recharge after a long day?',
    answers: [
      Answers(
        text: 'Quiet reflection or reading  ',
        personalitytype: Personalitytype.thinker,
      ),
      Answers(
        text: 'Spending time with close friends ',
        personalitytype: Personalitytype.feeler,
      ),
      Answers(
        text: "Planning tomorrow's tasks",
        personalitytype: Personalitytype.planner,
      ),
      Answers(
        text: 'Doing something active or exciting',
        personalitytype: Personalitytype.adventurer,
      ),
    ],
  ),
  Question(
    text: "You're most comfortable when...",
    answers: [
      Answers(
        text: ' Things make logical sense ',
        personalitytype: Personalitytype.thinker,
      ),
      Answers(
        text: 'Everyone is getting along ',
        personalitytype: Personalitytype.feeler,
      ),
      Answers(
        text: "There's a clear structure ",
        personalitytype: Personalitytype.planner,
      ),
      Answers(
        text: "You're free to try new things",
        personalitytype: Personalitytype.adventurer,
      ),
    ],
  ),

  Question(
    text: "Your biggest strength is...",
    answers: [
      Answers(
        text: ' Thinking critically  ',
        personalitytype: Personalitytype.thinker,
      ),
      Answers(
        text: ' Empathizing with others ',
        personalitytype: Personalitytype.feeler,
      ),
      Answers(
        text: " Staying organized ",
        personalitytype: Personalitytype.planner,
      ),
      Answers(
        text: "Being adventurous",
        personalitytype: Personalitytype.adventurer,
      ),
    ],
  ),
];
