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
  var _index = 0;

  void _answerQuestion() {
    setState(() {
      _index = _index + 1;
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {

//    var isTrue = false;
//
//    //isTrue ? print('base') : print('athini');
//
//    isTrue? print('true') : print('false');

    final questions = [
      {'question' : 'what is your favorite color?', 'answer' : ['Black', 'Black', 'Black']},
      {'question' : 'How many dogs do you have?', 'answer' : ['1', '2', '3']},
      {'question' : 'where do you live?', 'answer' : ['Port St Johns', 'East London', 'Port Elizabeth', 'Umtata', 'Bisho', 'King William\'s Town', 'Cape Town']}];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
        ),
        body: Container(
          margin: EdgeInsets.all(80),
          child: Column(
            children: <Widget>[
              Question(questions[_index]['question']),

              ...(questions[_index]['answer'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()

            ],
          ),
        ),
      ),
    );
  }
}
