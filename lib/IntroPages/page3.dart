import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page3 extends StatelessWidget {
  const Page3({super.key});

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
              child:Lottie.asset('assets/animation/anim_3.json') ,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('“An investment in knowledge pays the best interest.” – Benjamin Franklin',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
