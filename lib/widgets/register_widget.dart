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
          height: 55,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Full Name',
          ),
        ),
        SizedBox(height: 16,),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
        ),

        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 33),
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
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
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
          height: 22,
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
                  Text('Remmber me'),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // إضافة الاستجابة للنقر على Forgot Password
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
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
                      'New Member ?',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'SINGUP',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
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
                    ),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade700,
                            Colors.blueAccent.shade200
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
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
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 125),
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
