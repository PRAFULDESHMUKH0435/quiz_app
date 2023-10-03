import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/intropage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     Timer(Duration(seconds: 5), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IntroPage()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
               height: 200,
               child: Lottie.asset('assets/animation/anim_1.json'),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Text('Quiz App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
