import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/pages/buyPage.dart';
import 'package:project/pages/homePage.dart';
import 'package:project/pages/preferPage.dart';
import 'package:project/pages/searchPage.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  final screens = const [
    homePage(),
    searchPage(),
    buyPage(),
    preferPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        indicatorColor: const Color.fromRGBO(8, 0, 32, 1),
        backgroundColor: const Color.fromRGBO(8, 0, 32, 1),
        selectedIndex: index,
        onDestinationSelected: (index) => setState(
          () => this.index = index,
        ),
        height: 56,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home_rounded,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 27,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              color: Color.fromARGB(255, 255, 255, 255),
              Icons.search,
              size: 27,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              color: Color.fromARGB(255, 255, 255, 255),
              Icons.shopping_bag,
              size: 27,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.white,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
