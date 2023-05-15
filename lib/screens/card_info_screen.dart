import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              height: 200.0,
              child: Image.asset('lib/images/map.png'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: 'More Details About location …...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cancel_outlined),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBox(height: 32.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),

              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  child: Text(
                    'ADD ORDER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/card_info_filled_screen');

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
            ),
          ],
        ),
      ),
    );
  }
}
