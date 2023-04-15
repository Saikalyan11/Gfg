import 'package:flutter/material.dart';
import 'package:hackathon_app/Navigation/Profile.dart';
import 'package:hackathon_app/Navigation/Search.dart';
import 'package:hackathon_app/Navigation/feed.dart';
import 'package:hackathon_app/Settings/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Pages = [
    Feed(),
    SearchPage(),
    Profile(),
    Settingspage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            onTap: onTap,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Color.fromARGB(255, 185, 118, 47),
            unselectedItemColor: const Color.fromARGB(255, 86, 88, 88),
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
        body: Pages[currentIndex]);
  }
}
