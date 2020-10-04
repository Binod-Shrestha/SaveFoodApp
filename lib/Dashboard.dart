import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        BottomNavigationBarWidget(),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backImg-2.png"),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    ));
  }
}
