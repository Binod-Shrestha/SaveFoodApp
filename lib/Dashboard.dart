import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: BottomNavigationBarWidget());
  }
}
