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

   int correctanswer =0;
   int wronganswer =0;
  List<Icon> scorekeeper =[
    Icon(Icons.check,color: Colors.green,),
    Icon(Icons.clear,color: Colors.red,),
  ];

  List<Question> questionbank =[
    Question(q: 'Delhi Is Capital Of India ?', a: true),
    Question(q: 'Nagpur Is Known As Orange City ?', a: true),
    Question(q: 'Nagpur Is Center Part Of India ?', a: true),
    Question(q: 'Nagpur Is Summer Capital Of Maharashtra ?', a: false),
    Question(q: 'Flutter Is Written In Dart Language ?', a: true),
    Question(q: 'Flutter Is Developed By Facebook ?', a: false),
    Question(q: 'React Native Is Developed By Facebook ?', a: true),
    Question(q: 'Ali-Pay Is Developed In Flutter ?', a: true),
    Question(q: 'Zealandia Is The 8th Continent Found ?', a: true),
    Question(q: 'IPhone 17 Is Launched', a: false),

  ];

   void checkanswer(int idx , bool answer){
    if(answer==questionbank[idx].answer){
      correctanswer++;
      scorekeeper.add(Icon(Icons.check,color: Colors.green,));
    }else {
      wronganswer++;
      scorekeeper.add(Icon(Icons.clear,color: Colors.red,));
    }
  }


}
