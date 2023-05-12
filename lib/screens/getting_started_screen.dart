import 'package:flutter/material.dart';

import '../widgets/bottom_nav_ber.dart';

class Getting_Started_Screen extends StatefulWidget {
  const Getting_Started_Screen({Key? key}) : super(key: key);

  @override
  State<Getting_Started_Screen> createState() => _Getting_Started_ScreenState();
}

class _Getting_Started_ScreenState extends State<Getting_Started_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigation(),
    );
  }
}
