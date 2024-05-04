import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(children: [
                Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: data['user_answer'] == data['correct_answer']
                          ? Colors.blue
                          : Colors.red,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    )),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      data['question'] as String,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String)
                  ],
                )),
              ]),
            );
          }).toList(),
        ),
      ),
    );
  }
}
