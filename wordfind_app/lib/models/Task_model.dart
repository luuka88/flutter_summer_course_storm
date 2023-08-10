import 'char_model.dart';

class TaskModel {
  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];
  TaskModel(
      {required this.pathImage,
      required this.answer,
      required this.question,
      this.arrayButtons = const []});
  setWordFindChar(List<CharModel> puzzles) {
    this.puzzles = puzzles;
  }

  setlsDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (complete) {
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString =
        puzzles.map((puzzle) => puzzle.currentValue).join("");
    return answeredString == answer;
  }

  TaskModel clone() {
    return TaskModel(
      pathImage: pathImage,
      answer: answer,
      question: question,
    );
  }
}
