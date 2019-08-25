import 'package:flutter/material.dart';
void main(){
 runApp(MyApp());
}

class MyApp extends StatefulWidget{ //Changing state class widget
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
var questionIndex = 0;
class MyAppState extends State<MyApp>{  //Persistant state class widget 
 Widget build(BuildContext context){

  void answerQuestion(){
    setState((){
    questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }
  @override
   var questions =  ['What\'s are your favourite color?', 'What\'s are your favourite animal?' ];
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('My First App'), 
         ), 
          body: Column(
            children: [
            Text(questions.elementAt(questionIndex)),  
            RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion), //Passed just pointer to function for later execution
            RaisedButton(child: Text('Anonymous function call'),onPressed: ()=>{
              print('Anonymous function called')
            }), // Running anonymous function
         ],
       )
       )
    );
  }
}
   
