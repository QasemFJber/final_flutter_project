import 'package:final_flutter_project/widgets/more_widget.dart';
import 'package:final_flutter_project/widgets/orders_widget.dart';
import 'package:final_flutter_project/widgets/service_widget.dart';
import 'package:final_flutter_project/widgets/user_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    ServiceScreen(),
    OrdersScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        // selectedIconTheme: IconThemeData(color: Colors.amber),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF6FC8FB),

        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/images/layer_3.png',
                height: 30,
                width: 30
            ),
            label: 'Service',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
