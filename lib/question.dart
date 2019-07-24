import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 22,
          fontFamily: 'Roboto',
          color: Color.fromARGB(121, 121, 121, 121),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
