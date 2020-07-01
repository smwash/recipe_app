import 'package:flutter/material.dart';
import 'package:meal_app/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final Function press;

  const CategoryItem({Key key, this.title, this.color, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: kPrimaryColor,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.8),
              color.withOpacity(0.7),
              color,
            ],
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 23.0, letterSpacing: 1.2, fontFamily: 'Poppins-Bold'),
          ),
        ),
      ),
      onTap: press,
    );
  }
}
