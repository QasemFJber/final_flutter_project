import 'package:final_flutter_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main () => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/splash',
      routes: {
        // '/': (context) => HomePage(),
        // '/splash': (context) => Splash_Screen(),
        // '/contact': (context) => ContactPage(),
        '/splash': (context) => Splash_Screen(),
      },
    );
  }
}
