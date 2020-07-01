import 'package:flutter/material.dart';
import 'package:meal_app/constants.dart';
import 'package:meal_app/screens/homepage.dart';

import 'favorites_screen.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> _pages = [
    HomePage(),
    FavoritesScreen(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.black,
            iconSize: 26.0,
            selectedFontSize: 17.0,
            unselectedFontSize: 15.0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text('Categories'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                title: Text('Favorites'),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
