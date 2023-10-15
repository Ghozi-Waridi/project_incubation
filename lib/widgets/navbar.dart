import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';
import 'package:project_incubation/pages/home.dart';
import 'package:project_incubation/pages/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

int angkaLit = 0;

class _NavbarState extends State<Navbar> {
  void changePage(int index) {
    setState(() {
      angkaLit = index;
    });
  }

  final pages = [
    Home(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[angkaLit],
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Color(colorSecond),
          animationDuration: Duration(milliseconds: 500),
          height: 75.0,
          index: angkaLit,
          onTap: changePage,
          items: [
            Icon(
              Icons.home,
              color: Color(colorText),
            ),
            Icon(
              Icons.person,
              color: Color(colorText),
            ),
            // Icon(
            //   Icons.settings,
            //   color: Color(colorText),
            // )
          ]),
    );
  }
}
