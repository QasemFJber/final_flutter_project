import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://example.com/profile_image.jpg',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Current Location: New York',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    title: Text('Language'),
                    onTap: () {
                      // handle tap on language
                    },
                  ),
                  Divider(),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    title: Text('Rate App'),
                    onTap: () {
                      // handle tap on rate app
                    },
                  ),
                  Divider(),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    title: Text('Contact Us'),
                    onTap: () {
                      // handle tap on contact us
                    },
                  ),
                  Divider(),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    title: Text('Share App'),
                    onTap: () {
                      // handle tap on share app
                    },
                  ),
                  Divider(),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    title: Text('Logout'),
                    onTap: () {
                      // handle tap on logout
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
