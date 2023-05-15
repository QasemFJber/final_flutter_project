import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Full Name',
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: IntlPhoneField(
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
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white38,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye_outlined),
              ),
              border: OutlineInputBorder(),
              labelText: '*******',
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.lightBlueAccent,
                    value: true, // تحديد القيمة الافتراضية
                    onChanged: (value) {}, // تعديل القيمة عند التغيير
                  ),
                  Text('I Read and Accept'),
                  Text(
                    ' Home Service Terms & Conditions',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HAVE ACCOUNT ?',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login_screen');
                      },
                      child: Text(
                        'SING IN',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFEDF696),
                          offset: Offset(0, 5),
                          blurRadius: 0,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.topEnd,
                          end: AlignmentDirectional.topStart,
                          colors: [
                            Color(0xFF6DC5FA),
                            Color(0xFF346EDF),
                          ],
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'SING UP',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                )),
          ],
        ),
        SizedBox(
          height: 44,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 125, bottom: 20),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'Get Start Now',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/on_boarding_screen');
                      },
                      icon: Icon(Icons.arrow_forward),
                      color: Colors.black,
                      iconSize: 28),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
