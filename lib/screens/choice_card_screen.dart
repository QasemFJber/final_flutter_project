import 'package:flutter/material.dart';

class ChoiceCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Completed '),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              height: 200.0,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('lib/images/in_email.png'),
                ],
              ),
            ),

            SizedBox(height: 16.0),


            TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: 'More Details About Problem …...',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 32.0),


            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                child: Text('NEXT'),
                onPressed: () {
                  Navigator.pushNamed(context, '/card_info_screen');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
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
