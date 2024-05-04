import "package:flutter/material.dart";
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import "package:quiz_app/start_screen.dart";
import "package:quiz_app/result_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

// method used
  @override
  void initState() {
    activeScreen = StartScreen(
      startQuiz: switchScreen,
    );
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen =
            ResultScreen(restartQuiz, chosenAnswers: selectedAnswers);
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = StartScreen(startQuiz: switchScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 100, 0, 100),
                Color.fromARGB(100, 50, 2, 10)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
