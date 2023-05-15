import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // الصوتيات
            Container(
              height: 200.0,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.0),

            // حقل الادخال
            TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: 'Enter text here...',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 32.0),

            // زر الانتقال للصفحة التالية
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                child: Text('NEXT'),
                onPressed: () {},
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
