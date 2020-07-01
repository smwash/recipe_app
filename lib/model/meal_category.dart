import 'package:flutter/material.dart';
import 'package:meal_app/constants.dart';

class MealCategory {
  final String id;
  final String title;
  final Color color;

  const MealCategory(
      {this.color = kPrimaryColor, @required this.id, @required this.title});
}
