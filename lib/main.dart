import 'package:flutter/material.dart';
void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget{
 Widget build(BuildContext context){
  @override
   var questions =  ['What\'s are your favourite color?', 'What\'s are your favourite animal?' ];
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('My First App'), 
         ), 
          body: Column(
            children: [
            RaisedButton(child: Text('Answer 1'),onPressed: null),
            RaisedButton(child: Text('Answer 2'),onPressed: null),
            RaisedButton(child: Text('Answer 3'),onPressed: null),
            ],
       )
       )
    );
  }
}
   
