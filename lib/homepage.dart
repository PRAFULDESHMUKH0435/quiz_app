import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int index = 0;
  Helper que =Helper();
  List scorekeeer=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      ///APPBAR
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quiz App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.logout))
        ],
      ),
      ///BODY
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///BANNER CONTAINER
            Container(
              margin: EdgeInsets.all(10.0),
              height: 250,
              width: double.infinity,
              child: Image.network('https://akm-img-a-in.tosshub.com/sites/media2/indiatoday/images/stories/2016May/albert-einstein_053016040636.jpg',fit: BoxFit.fill),
            ),
            ///QUESTIONS + BUTTONS
            (index<que.questionbank.length==true)?
                  Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white
              ),
              width: double.infinity,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Container(
                   margin:EdgeInsets.only(right: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('${index+1}/${que.questionbank.length}',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
                     ],
                   ),
                 ),
                 Container(
                    height: 200,
                    alignment: Alignment(0,0),
                    child: Text(que.questionbank[index].question,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                  ),
                  // TRUE AND FALSE BUTTONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onDoubleTap: (){
                            que.checkanswer(index, true);
                            setState(() {
                              index++;
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.green,
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: TextButton(onPressed: (){}, child: Text('True',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),))),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                          child: InkWell(
                         onDoubleTap: (){
                             que.checkanswer(index,false);
                             setState(() {
                               index++;
                               print('Index$index');
                             });
                         },
                          child: Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.red,
                            ),
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: TextButton(onPressed: (){}, child: Text('False',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)))),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
            :
                  Container(
                    height:400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Result Is :',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text('Correct Answers : ${que.correctanswer}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text('Wrong Answers  : ${que.wronganswer}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.all(12.0),
                          child: OutlinedButton(onPressed: (){
                            setState(() {
                              index=0;
                              que.correctanswer=0;
                              que.wronganswer=0;
                            });
                          }, child: Text('Retry',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                        )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }



}
