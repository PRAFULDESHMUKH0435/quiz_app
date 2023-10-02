import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

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
              child:Lottie.asset('assets/animation/anim_2.json') ,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('“Education is the key to unlock the golden door of freedom.” – George Washington Carver',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
