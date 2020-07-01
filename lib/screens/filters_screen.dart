import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const idPage = 'filtersscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters Screen'),
      ),
    );
  }
}
