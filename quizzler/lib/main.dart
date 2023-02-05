import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';
import 'quizBrain.dart';

void main() => runApp(Quizzler());

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  List<Widget> scorekeeper = [];
  void next(){
    if (quizBrain.isFinished() == true) {
      quizBrain.tButton = '${quizBrain.correct} Correct';
      quizBrain.fButton = '${quizBrain.incorrect} Incorrect';
      head = 'FINISHED !';
      quizBrain.qnum++;
      quizBrain.disableButton = true;
      // return;
    }else{
      quizBrain.qnum++;
      head = 'Question ${quizBrain.qnum + 1}';
    }
  }
  void setscore(bool answered) {
    if (quizBrain.questionBank[quizBrain.qnum].questionAns == answered) {
      quizBrain.correct ++;
      scorekeeper.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      quizBrain.incorrect ++;
      scorekeeper.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }
  String head = 'Question ${quizBrain.qnum + 1}';
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              head,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: "SourceSansPro",
                letterSpacing: 2.5,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionBank[quizBrain.qnum].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: MaterialButton(
              textColor: Colors.white,
              color: Colors.green,
              onPressed: quizBrain.disableButton?null:() {
                setState(() {
                  setscore(true);
                  next();
                });
              },
              child: Text(
                quizBrain.tButton,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: MaterialButton(
              color: Colors.red,
              onPressed: quizBrain.disableButton?null:() {
                setState(() {
                  setscore(false);
                  next();
                });
              },
              child: Text(
                quizBrain.fButton,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),Visibility(
          visible: quizBrain.disableButton,
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: MaterialButton(
                color: Colors.orange,
                onPressed: () {
                  setState(() {
                    quizBrain.reset();
                    head = 'Question ${quizBrain.qnum + 1}';
                    scorekeeper = [];
                  });
                },
                child: const Text(
                  "Retake the quiz",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
