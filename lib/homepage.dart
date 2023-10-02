import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
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

          ElevatedButton(onPressed: (){

          }, child: Text('Click Me'))
        ],
      ),
    );
  }
}
