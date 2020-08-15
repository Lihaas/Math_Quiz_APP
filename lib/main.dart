import 'package:flutter/material.dart';
import 'package:quize_app/QnaPojo.dart';
import 'package:quize_app/QuestionBank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(QuizeApp());
}

class QuizeApp extends StatefulWidget {
  @override
  _QuizeAppState createState() => _QuizeAppState();
}

List<Icon> result = [];

int Counter = 0;

QuestionBank questionBank = QuestionBank();

void setResult(String Userclick) {
  if (Userclick == questionBank.getAns()) {
    result.add(Icon(
      Icons.check,
      color: Colors.lightGreen,
    ));
  } else {
    result.add(Icon(
      Icons.close,
      color: Colors.redAccent,
    ));
  }
}

class _QuizeAppState extends State<QuizeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Quizeo"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Image.asset("images/r1.png"),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    questionBank.getQuestion(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        if (questionBank.getCounterNumber() > 10) {
                        } else {
                          setResult("False");
                          questionBank.NextQ();
                        }
                      });
                    },
                    child: Center(
                      child: Text(
                        "False",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        setResult("True");
                        questionBank.NextQ();
                      });
                    },
                    child: Center(
                      child: Text(
                        "True",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(children: result)
            ],
          ),
        ),
      ),
    );
  }
}
