import 'package:final_flutter_project/screens/getting_started_screen.dart';
import 'package:final_flutter_project/screens/login_screen.dart';
import 'package:final_flutter_project/screens/onboarding_screen.dart';
import 'package:final_flutter_project/screens/onboarding_screen2.dart';
import 'package:final_flutter_project/screens/onboarding_screnn3.dart';
import 'package:final_flutter_project/screens/register_screen.dart';
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
        '/onboarding_screen' : (context) => Onboarding_Screen(),
        '/onboarding_screen2': (context)=> Onboarding_ScreenTow(),
        '/onboarding_screen3' : (context) => Onboarding_ScreenThree(),
        '/login_screen' : (context) => LoginPage(),
        '/register_screen' : (context) => RegiserPage(),
        '/getting_started_screen': (context) => Getting_Started_Screen(),
      },
    );
  }
}
