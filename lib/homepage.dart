import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              margin: EdgeInsets.all(10.0),
              height: 250,
              width: double.infinity,
              child: Image.network('https://akm-img-a-in.tosshub.com/sites/media2/indiatoday/images/stories/2016May/albert-einstein_053016040636.jpg',fit: BoxFit.fill),
            ),

            Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                // border: Border.all(color: Colors.pink,width: 5),
                color: Colors.white
              ),
              width: double.infinity,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // QUESTIONS
                  Text('$index',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  // TRUE AND FALSE BUTTONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            // checkanswer(index);
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
                          onTap: (){
                            // checkanswer(index);
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
          ],
        ),
      ),
    );
  }

  int checkanswer(int idx){
    return idx++;
  }
}
