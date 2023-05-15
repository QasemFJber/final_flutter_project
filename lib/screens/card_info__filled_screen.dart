import 'package:final_flutter_project/screens/getting_started_screen.dart';
import 'package:flutter/material.dart';

class CardInfoFilled extends StatelessWidget {
  const CardInfoFilled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Info Filled'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/illustration.png',

            ),
            SizedBox(height: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ORDER ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Done!',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8.0),
                Text(
                  'The ORDER has been sent. A technician will ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'contact you',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            Container(
              width: 255,
              height: 55,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                child: Text('GO TO HOME',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Getting_Started_Screen()),
                        (Route<dynamic> route)=>false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade400,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
