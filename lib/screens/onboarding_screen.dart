import 'package:final_flutter_project/screens/onboarding_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Onboarding_Screen extends StatelessWidget {
  const Onboarding_Screen({Key? key}) : super(key: key);

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
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/onboarding_screen2');
                  // Get.to(const Onboarding_ScreenTow());
                },
                child: Text('NEXT'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
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
