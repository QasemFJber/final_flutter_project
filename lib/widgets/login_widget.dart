import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
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
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value;
                      });
                    },
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register_screen');
                      },
                      child: Text(
                        'SINGUP',
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
                    ),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFEDF696),
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 0,
                          ),
                        ],
                        gradient: LinearGradient(
                            begin: AlignmentDirectional.topEnd,
                            end: AlignmentDirectional.topStart,
                            colors: [
                              Color(0xFF346EDF),
                              Color(0xFF6DC5FA),
                            ]),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            '/getting_started_screen',
                                (Route<dynamic> route) => false,
                          );
                        },
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
          padding: const EdgeInsets.only(left: 125, bottom: 22),
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
