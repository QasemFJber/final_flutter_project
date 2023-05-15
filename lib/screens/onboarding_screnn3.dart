import 'package:final_flutter_project/screens/getting_started_screen.dart';
import 'package:final_flutter_project/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Onboarding_ScreenThree extends StatelessWidget {
  const Onboarding_ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/images/mobile-application-call-taxi-vector-illustration_82574-3185.png'),
                SizedBox(height: 20),
                const Text(
                  'Fast reservation with technicians',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                const Text(
                  'and craftsmen',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Getting_Started_Screen()),
                      (Route<dynamic> route)=>false,

                  );

                },
                child: Text('NEXT'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  primary: Colors.blue,
                  elevation: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );



  }
}
