import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main(){
 runApp(MyApp());
}

var _questionIndex = 0; 
class MyApp extends StatefulWidget{ //Changing state class widget
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{  //Persistant state class widget 
 // _ClassName turns it into a private class for only be used in "MyAPP" class
 Widget build(BuildContext context){
 @override
   final questions = const [
    {
      'questionText': 'What\'s are your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s are your favourite animal?',
      'answers': ['Rabit', 'Lion', 'Tiger', 'Snake']
    },     
   ];
  void _answerQuestion(){
    if(_questionIndex < questions.length){
      setState((){
          _questionIndex = _questionIndex + 1;
      });
    }else{
      print("Questions finished");
    }
    
  }
  
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('My First App'), 
         ), 
          body: _questionIndex < questions.length ? Column(
            children: [
            Question(
              questions[_questionIndex]['questionText']
            ),  
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);     
           }).toList()
           ],
       ) : Center(child: Text('Quiz over!')),
       )
    );
  }
}
   
