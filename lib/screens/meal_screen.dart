import 'package:flutter/material.dart';
import 'package:meal_app/constants.dart';
import 'package:meal_app/model/food_class.dart';
import 'package:meal_app/model/meal_data.dart';
import 'package:meal_app/widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  static const idPage = 'meal_screen';
  final String title;
  final Color color;
  final String id;

  MealScreen({this.id, this.title, this.color});
  @override
  Widget build(BuildContext context) {
    final MealScreen args = ModalRoute.of(context).settings.arguments;
    final title = args.title;

    final id = args.id;

    final categoryMeals = FOOD_MEAL.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: kPrimaryColor,
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1.2),
        ),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          Meal meals = categoryMeals[index];
          return MealItem(
              title: meals.title,
              id: meals.id,
              imageUrl: meals.imageUrl,
              duration: meals.duration,
              complexity: meals.complexity,
              affordability: meals.affordability);
        },
      ),
    );
  }
}
