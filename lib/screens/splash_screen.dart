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

    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/onboarding_screen');
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF3672E0),
              Color(0xFF6DC5FA),

            ],

          ),
        ),
        child: Center(
          child:Image.asset('lib/images/Layer_2.png',) ,
        ) /*Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Container()),
            Image.asset('lib/images/Layer_2.png'),
          ],
        ),*/

      ),
    );
  }
}
