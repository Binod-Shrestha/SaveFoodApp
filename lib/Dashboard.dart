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
    return Container(child:
        BottomNavigationBarWidget()
      /*decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backImg-2.png"),
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.3), BlendMode.dstATop),
          fit: BoxFit.fill,
        ),
      ),*/
    );
  }
}
