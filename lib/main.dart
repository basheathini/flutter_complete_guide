import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 1;

  void _answerQuestion() {
    setState(() {
      _index = _index + 1;
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favorite color?',
      'How many dogs do you have?',
      'where do you live?'
    ];
    var answers = ['Red', 'I dont have any dog', 'I live at Rosebank'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_index]),
            Text(answers[_index]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            RaisedButton(
              child: Text('click me'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
