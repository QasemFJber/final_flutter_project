import 'package:final_flutter_project/widgets/login_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xFF3672E0),
                Color(0xFF6DC5FA),
              ]),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: Image.asset('lib/images/layer_3.png'),
                ),
                color: Colors.cyan,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: LoginWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
