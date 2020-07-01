import 'package:flutter/material.dart';

import 'package:meal_app/model/food_class.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final String id;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(
      {@required this.title,
      @required this.id,
      @required this.imageUrl,
      @required this.duration,
      @required this.complexity,
      @required this.affordability});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'UnKnown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;

      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'UnKnown';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 10),
              blurRadius: 15.0,
              spreadRadius: -10.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(17.0),
                  ),
                  child: Hero(
                    tag: imageUrl,
                    child: Image.network(
                      imageUrl,
                      height: size.height * 0.28,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    width: size.width * 0.6,
                    // height: size.height * 0.075,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 7.5),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 7.5),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 7.5),
                      Text(affordabilityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          MealDetailScreen.idPage,
          arguments: (MealDetailScreen(
            id: id,
          )),
        );
      },
    );
  }
}
