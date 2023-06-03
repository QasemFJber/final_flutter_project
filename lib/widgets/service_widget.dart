import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ServiceScreen extends StatelessWidget {
  final List<String> images = [
    'lib/images/Shape 1.png',
    'lib/images/Forma 1.png',
    'lib/images/ds.png',
    'lib/images/1.png',
    'lib/images/2.png',
    'lib/images/3.png',
    'lib/images/4.png',
    'lib/images/1 - Copy.png',
    'lib/images/2 - Copy.png',
    'lib/images/3 - Copy.png',
    'lib/images/4 - Copy.png',
    'lib/images/ds - Copy.png',
  ];

  final List<String> texts = ['Carpenter'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: FlexibleSpaceBar(
          centerTitle: true,
          title: Center(
            child: Image.asset(
              'lib/images/layer_3.png',
              height: 33,
            ),
          ),
        ),
        actions: [
      IconButton(
      icon: Image.asset("lib/images/Shape.png"),
      onPressed: () {
        Fluttertoast.showToast(
          msg: "تم اضافة الخدمة بنجاح ",
          toastLength: Toast.LENGTH_SHORT,
        );
        Fluttertoast.showToast(
          msg: "شكرا لتعاملك مع تطبيق خدمات",
          toastLength: Toast.LENGTH_LONG,
        );
      },
      ),
      ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              fit: StackFit.passthrough,
              children: [
                Image.asset(
                  'lib/images/Background.png',
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  margin: EdgeInsets.all(33),
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      width: 222,
                      height: 188,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
            Center(
              child: Text(
                'Select Service',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(12, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/choice_file_screen');
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.pink[100]!,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              images[index % images.length],
                              width: 64,
                              height: 64,
                            ),
                            SizedBox(height: 8),
                            Text(
                              texts[index % texts.length],
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
