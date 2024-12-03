import 'package:quizlord/quiz.dart';

class QuizManage {
  int _quizProgress = 0;

  final List<Quiz> _quizBank = [
    Quiz(
        question: "You can lead a cow down stairs but not up stairs.",
        answer: false),
    Quiz(
        question: "Approximately one quarter of human bones are in the feet.",
        answer: true),
    Quiz(question: "A slug's blood is green.", answer: true),
  ];

  void nextQuestion() {
    if (_quizProgress < _quizBank.length - 1) {
      _quizProgress++;
    }
  }

  String getQuestion() {
    return _quizBank[_quizProgress].question;
  }

  bool getCorrectAnswer() {
    return _quizBank[_quizProgress].answer;
  }
}
