import 'dart:async';

import 'package:final_flutter_project/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboarding_Screen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset('lib/images/Layer_2.png',width: 155,height: 155,),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x346EDF),
              Color(0x6CC3F9),
            ],

          ),
        ),
      ),
    );
  }
}
