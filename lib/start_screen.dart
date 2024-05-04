import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
              opacity: 0.9,
              child: Image.asset(
                "assets/images/6e19fee6b47b36ca613f.png",
                width: 300,
                color: const Color.fromARGB(255, 255, 255, 255),
              )),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              // will be executed once the button is pressed (:,
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: const Text("Start Quiz",
                  style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
