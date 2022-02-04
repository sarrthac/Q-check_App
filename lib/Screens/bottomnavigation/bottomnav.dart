import 'package:flutter/material.dart';
import 'package:q_check/Screens/Home/menu_page.dart';
import 'package:q_check/Screens/Profile/logoutpage.dart';
import 'package:q_check/Screens/Profile/profile.dart';
import 'package:q_check/Screens/Search/search.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List screens = [
    MenuPage(),
    Search(),
    ProfilePage(),
    LogoutPage(),
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
      body: screens[currentIndex ],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF135821),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        showUnselectedLabels: false,
        onTap: onTap,
        currentIndex: currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile'),
               const BottomNavigationBarItem(
              icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
    );
  }
}
