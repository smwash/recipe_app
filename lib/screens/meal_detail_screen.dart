import 'package:flutter/material.dart';
import 'package:meal_app/model/meal_data.dart';

import '../constants.dart';

class MealDetailScreen extends StatelessWidget {
  static const idPage = 'meal_detail_screen';

  final String id;

  const MealDetailScreen({
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final MealDetailScreen args = ModalRoute.of(context).settings.arguments;
    final id = args.id;
    final selectedMeal = FOOD_MEAL.firstWhere((meal) => meal.id == id);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
              height: size.height * 0.42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35.0),
                ),
                boxShadow: [kContainerShadow],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35.0),
                ),
                child: Hero(
                  tag: selectedMeal.imageUrl,
                  child: Image.network(
                    selectedMeal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.015),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Ingredients',
                        style: TextStyle(
                            fontSize: 23.0,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: size.height * 0.013),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.black),
                        boxShadow: [
                          kContainerShadow,
                        ],
                      ),
                      child: Container(
                        height: size.height * 0.17,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemCount: selectedMeal.ingredients.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Icon(Icons.check,
                                      color: Colors.black, size: 17.0),
                                  SizedBox(width: 10.0),
                                  Text(
                                    selectedMeal.ingredients[index],
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: size.height * 0.012),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Steps to follow',
                        style: TextStyle(
                            fontSize: 23.0,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: size.height * 0.013),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.black),
                        boxShadow: [
                          kContainerShadow,
                        ],
                      ),
                      child: Container(
                        height: size.height * 0.3,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemCount: selectedMeal.steps.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor:
                                          kPrimaryColor.withOpacity(0.8),
                                      child: Text(
                                        '# ${(index + 1)}',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    title: Text(
                                      selectedMeal.steps[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Divider(
                                    color: kPrimaryColor,
                                    height: 0.0,
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//   height: size.height * 0.2,
//   margin: EdgeInsets.symmetric(horizontal: 20.0),
//   padding:
//       EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
//   decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(15.0),
//     border: Border.all(color: Colors.black),
//     boxShadow: [
//       kContainerShadow,
//     ],
//   ),
//   child: Expanded(
//     child: ListView.builder(
//         itemCount: selectedMeal.ingredients.length,
//         itemBuilder: (context, index) {
//           return Text(
//             selectedMeal.ingredients[index],
//           );
//         }),
//   ),
// ),
