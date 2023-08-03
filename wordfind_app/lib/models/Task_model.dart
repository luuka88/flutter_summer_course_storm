import 'char_model.dart';
class TaskModel{
  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];
 TaskModel(this.pathImage,this.answer,this.question,this.arrayButtons);
 setWordFindChar(List<CharModel> puzzles){
   this.puzzles=puzzles;
 }
 setlsDone(){
   isDone = true ;

 }

  fieldCompleteCorrect(){
    bool complete = puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if(complete){
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString = puzzles.map((puzzle) => puzzle.currentValue).join("");
    return answeredString == answer;


  }
  clone(){
   return TaskModel(pathImage, answer, question, arrayButtons);
  }
}