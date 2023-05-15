import 'package:final_flutter_project/widgets/login_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: AlignmentDirectional.topEnd,
                      end: AlignmentDirectional.topStart,
                      colors: [
                        Color(0xFF6DC5FA),
                        Color(0xFF346EDF),
                      ]),
                ),
                child: Center(
                  child: Image.asset('lib/images/layer_3.png'),
                ),
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
