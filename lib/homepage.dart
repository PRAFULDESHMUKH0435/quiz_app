import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;
  Helper que =Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      ///APPBAR
      appBar: AppBar(
        title: Text('Quiz App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 20,
              child: Image.network('https://cdn-icons-png.flaticon.com/512/25/25231.png'),
            ),
          )
        ],
      ),
      ///BODY
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///CONTAINER
            Container(
              margin: EdgeInsets.all(10.0),
              height: 250,
              width: double.infinity,
              child: Image.network('https://akm-img-a-in.tosshub.com/sites/media2/indiatoday/images/stories/2016May/albert-einstein_053016040636.jpg',fit: BoxFit.fill),
            ),

            ///QUESTIONS + BUTTONS
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
            ),

            Container(
              margin: EdgeInsets.all(12.0),
              color: Colors.white,
              height: 40,
              child: que.scorekeeper.last,
            )
          ],
        ),
      ),
    );
  }

}
