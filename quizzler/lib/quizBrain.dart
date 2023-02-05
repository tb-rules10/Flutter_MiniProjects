import 'question.dart';

class QuizBrain {
  int qnum = 0;
  String tButton = 'True';
  String fButton = 'False';
  bool disableButton = false;
  int correct = 0;
  int incorrect = 0;

  List<Question> questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('No piece of square dry paper can be folded in half more than 7 times.',false),
    Question('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', true),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', false),
    Question('The total surface area of two human lungs is approximately 70 square metres.', true),
    Question('Google was originally called \"Backrub\".', true),
    Question('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', true),
    Question('Your score is listed below', true),
  ];



  bool isFinished() {
    if (qnum == questionBank.length - 2) {
      return true;
    } else {
      return false;
    }
  }

  void reset(){
    qnum = 0;
    tButton = 'True';
    fButton = 'False';
    disableButton = false;
    correct = 0;
    incorrect = 0;
  }

}
