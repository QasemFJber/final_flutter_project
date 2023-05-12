import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://www.w3schools.com/w3images/avatar2.png'),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            Text(
              'johndoe@gmail.com',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 32),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit Profile'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // handle tap on list item
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // handle tap on list item
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // handle tap on list item
              },
            ),
          ],
        ),
      ),
    );
  }
}
