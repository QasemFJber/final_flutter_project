import 'package:flutter/material.dart';

class Onboarding_ScreenTow extends StatelessWidget {
  const Onboarding_ScreenTow({Key? key}) : super(key: key);

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
                Image.asset('lib/images/2352195.png'),
                SizedBox(height: 20),
                Text(
                  'Fast reservation with technicians and craftsmen',
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
                  Navigator.pushNamed(context, '/onboarding_screen3');
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
