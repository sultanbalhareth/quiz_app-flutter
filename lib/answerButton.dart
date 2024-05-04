import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.buttonName, required this.onTap, super.key});

  final String buttonName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 5.0), // Adjust the vertical margin as needed
      child: ElevatedButton(
          onPressed: onTap,
          child: Text(buttonName),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    20.0), // Adjust the border radius as needed
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.black), // Change color here
          )),
    );
  }
}
