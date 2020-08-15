import 'QnaPojo.dart';

class QuestionBank {
  int CounterNumer = 0;

  List<QnaPojo> _Question = [
    QnaPojo("Is 1+2 = 3", "True"),
    QnaPojo("Is 2*3 = 5", "False"),
    QnaPojo("Is 12*6 = 72", "False"),
    QnaPojo("Is 128*2 = 256", "True"),
    QnaPojo("Is 1+2/(2-1) = 3", "True"),
    QnaPojo("Is 1+2/2-1-1 = Undefine", "True"),
    QnaPojo("Is 2*2222*1 = 44444", "False"),
    QnaPojo("Is 123*22 = 2311", "False"),
    QnaPojo("Is 3/(3+1) = 1/2", "False"),
    QnaPojo("Is 9*9*9+1 = 129", "False"),
    QnaPojo("Is 2*2*2*2*2*2 = 32", "False"),
    QnaPojo("Game Over", "Ok")
  ];

  int NextQ() {
    if (CounterNumer < _Question.length - 1) {
      return CounterNumer++;
    }
  }

  String getQuestion() {
    return _Question[CounterNumer].Question;
  }

  String getAns() {
    return _Question[CounterNumer].Ans;
  }

  int getCounterNumber() {
    return CounterNumer;
  }
}
