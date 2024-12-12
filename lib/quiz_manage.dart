import 'package:quizlord/quiz.dart';

class QuizManage {
  int _quizProgress = 0;

  final List<Quiz> _quizBank = [
    Quiz(
        question:
            "Hypertext Transfer Protocol (HTTP) allows retrieving inter-linked text documents",
        answer: true),
    Quiz(
        question:
            "Uniform interface: all resources are accessed with a generic interface (e.g., HTTP GET, POST, PUT, DELETE)",
        answer: true),
    Quiz(
        question:
            "A RESTful Web service is like Web applications, but for human",
        answer: false),
    Quiz(question: "A <div> block is an inline-level element", answer: false),
    Quiz(question: "BAML can't be decompiled back into XAML", answer: true),
    Quiz(question: "Inline-level elements begin on a new line", answer: false),
    Quiz(question: "True or False, Bootstrap is mobile-first", answer: true),
    Quiz(
        question:
            "Unlike earlier versions of HTML, HTML5 produces pages that look the same across all browsers",
        answer: false),
    Quiz(
        question:
            "HTML5 tags have the same semantic meaning, regardless of the browser being used",
        answer: true),
    Quiz(question: "Block-level elements begin on a new line", answer: true),
  ];

  void nextQuestion() {
    if (_quizProgress < _quizBank.length - 1) {
      _quizProgress++;
    }
  }

  bool isFinished() {
    if (_quizProgress >= _quizBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _quizProgress = 0;
  }

  String getQuestion() {
    return _quizBank[_quizProgress].question;
  }

  bool getCorrectAnswer() {
    return _quizBank[_quizProgress].answer;
  }
}
