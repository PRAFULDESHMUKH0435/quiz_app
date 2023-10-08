import 'package:flutter/material.dart';

class Question{
  String question="";
  bool answer=true;

  Question({required String q,required bool a}){
    question=q;
    answer=a;
  }

}
 class Helper{

  List<Widget> scorekeeper =[
    Icon(Icons.check,color: Colors.green,),
    Icon(Icons.clear,color: Colors.red,),
  ];

  List<Question> questionbank =[
    Question(q: 'Delhi Is Capital Of India ?', a: true),
    Question(q: 'Nagpur IS Known As Orange City ?', a: true),
    Question(q: 'Nagpur Is Center Part Of India ?', a: false),
    Question(q: 'Nagpur Is Summer Capital Of Maharashtra ?', a: false),
  ];



   void checkanswer(int idx , bool answer){
    if(answer==questionbank[idx].answer){
      scorekeeper.add(Icon(Icons.check,color: Colors.green,));
    }else {
      scorekeeper.add(Icon(Icons.clear,color: Colors.red,));
    }
  }


}
