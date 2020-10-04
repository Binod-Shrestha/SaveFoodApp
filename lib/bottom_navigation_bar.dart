import 'package:flutter/material.dart';
import 'package:save_food_app/grocery_widget.dart';
import 'package:save_food_app/homeWidget.dart';
import 'package:save_food_app/profile_widget.dart';
import 'package:save_food_app/settings_widget.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    ProfileWidget(),
    GroceryWidget(),
    SettingsWidget()
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 50.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 50.0,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              size: 50.0,
            ),
            label: 'Grocery',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 50.0,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue[400],
        onTap: _onItemTapped,
      ),
    );
  }
}
