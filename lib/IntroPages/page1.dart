import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child:Lottie.asset('assets/animation/anim_1.json') ,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('“The roots of education are bitter, but the fruit is sweet.” – Aristotle',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
