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
var _questionIndex = 0;
class _MyAppState extends State<MyApp>{  //Persistant state class widget 
 // _ClassName turns it into a private class for only be used in "MyAPP" class
 Widget build(BuildContext context){

  void _answerQuestion(){
    setState((){
    _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
            Text(questions.elementAt(_questionIndex)),  
            RaisedButton(child: Text('Answer 1'),onPressed: _answerQuestion), //Passed just pointer to function for later execution
            RaisedButton(child: Text('Anonymous function call'),onPressed: ()=>{
              print('Anonymous function called')
            }), // Running anonymous function
         ],
       )
       )
    );
  }
}
   
