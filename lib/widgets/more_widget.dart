import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final List<String> settingsList = [
    'Change Password',
    'FAQ\'s',
    'About App',
    'Terms & Conditions',
    'Privacy Policy',
    'Rate App',
    'Delete Account'
  ];

  final List<IconData> iconList = [
    Icons.lock,
    Icons.help_outline,
    Icons.info_outline,
    Icons.article_outlined,
    Icons.privacy_tip_outlined,
    Icons.star_border,
    Icons.delete_outline
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MORE'),
      ),
      body: ListView.builder(
        itemCount: settingsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Icon(iconList[index]),
                title: Text(settingsList[index]),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // handle tap on list item
                },
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
