import 'package:flutter/material.dart';

void main() {
  runApp(QuizeApp());
}

class QuizeApp extends StatefulWidget {
  @override
  _QuizeAppState createState() => _QuizeAppState();
}

List<Icon> result = [];

List<String> Question = [
  "Is 1+2 = 3",
  "Is 2*3 = 5",
  "Is 12*6 = 72",
  "Is 128*2 = 256",
  "Is 1+2/(2-1) = 3",
  "Is 1+2/2-1-1 = Undefine",
  "Is 2*2222*1 = 44444",
  "Is 123*22 = 2311",
  "Is 3/(3+1) = 1/2",
  "Is 9*9*9+1 = 129",
  "Is 2*2*2*2*2*2 = 32",
  "Game Over"
];

List<String> Ans = [
  "True",
  "False",
  "True",
  "True",
  "True",
  "True",
  "False",
  "False",
  "False",
  "False",
  "False",
  "False"
];

int Counter = 0;

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
                    Question[Counter],
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
                      if (Counter < Ans.length - 1) {
                        setState(() {
                          if (Ans[Counter] == "False") {
                            result.add(
                              Icon(
                                Icons.check,
                                color: Colors.blueGrey,
                              ),
                            );
                          } else {
                            result.add(Icon(
                              Icons.close,
                              color: Colors.redAccent,
                            ));
                          }
                          Counter++;
                        });
                      }
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
                      if (Counter < Ans.length - 1) {
                        setState(() {
                          if (Ans[Counter] == "True") {
                            print("1");
                            result.add(
                              Icon(
                                Icons.check,
                                color: Colors.blueGrey,
                              ),
                            );
                          } else {
                            print("0");
                            result.add(Icon(
                              Icons.close,
                              color: Colors.redAccent,
                            ));
                          }

                          Counter++;
                        });
                      }
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
