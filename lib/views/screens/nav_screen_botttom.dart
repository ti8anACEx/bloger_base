import 'package:bloger_base/consts/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../globals/global_vars.dart';

class NavBarScreeen extends StatefulWidget {
  const NavBarScreeen({super.key});

  @override
  State<NavBarScreeen> createState() => _NavBarScreeenState();
}

class _NavBarScreeenState extends State<NavBarScreeen> {
  int currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: fontGrey,
          color: blackColor,
          buttonBackgroundColor: purpleColor,
          animationDuration: const Duration(milliseconds: 350),
          onTap: (value) {
            setState(() {
              currentScreenIndex = value;
            });
          },
          items: const [
            Icon(Icons.home_rounded),
            Icon(Icons.trending_up_rounded),
            Icon(Icons.play_arrow_rounded),
            Icon(Icons.account_circle_rounded),
          ]),
      body: globalAppScreens[currentScreenIndex],
    );
  }
}
