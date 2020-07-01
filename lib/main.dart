import 'package:flutter/material.dart';
import 'package:meal_app/constants.dart';
import 'package:meal_app/screens/bottomNav_page.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/meal_screen.dart';

import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kSecColor,
        // canvasColor: kUtilColor,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNav(),
      routes: {
        MealScreen.idPage: (context) => MealScreen(),
        MealDetailScreen.idPage: (context) => MealDetailScreen(),
        FiltersScreen.idPage: (context) => FiltersScreen(),
        HomePage.idPage: (context) => HomePage()
      },
    );
  }
}
