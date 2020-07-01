import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/homepage.dart';
import 'package:meal_app/screens/meal_screen.dart';

import '../constants.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: kCanvasColor,
      ),
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: kUtilColor,
                    child: Text(
                      'JD',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'John Doe',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: Icon(
                Icons.restaurant,
                color: Colors.black,
              ),
              title: Text(
                'Meals',
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomePage.idPage);
              },
            ),
            Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, FiltersScreen.idPage);
              },
            ),
            Divider(
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
