import 'package:flutter/material.dart';
import 'package:meal_app/model/meal_data.dart';
import 'package:meal_app/widgets/category_grid_item.dart';
import 'package:meal_app/widgets/main_drawer.dart';

import '../constants.dart';
import 'meal_screen.dart';
// import 'package:meal_app/model/meal_category.dart';

class HomePage extends StatelessWidget {
  static const idPage = 'homepage_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.4,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Punk',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                    color: Colors.black,
                    fontFamily: 'Poppins'),
              ),
              TextSpan(
                text: 'Food',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black54,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.1,
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: GridView(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: MEAL_DATA.map((categoryData) {
          return CategoryItem(
            title: categoryData.title,
            color: categoryData.color,
            press: () {
              Navigator.pushNamed(
                context,
                MealScreen.idPage,
                arguments: (MealScreen(
                  color: categoryData.color,
                  title: categoryData.title,
                  id: categoryData.id,
                )),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
