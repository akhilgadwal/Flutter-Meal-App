import 'package:flutter/material.dart';
import 'package:meal_app/Dummydata/dummy_data.dart';
import 'package:meal_app/widget/meal_Screens.dart';

class CatMealScreen extends StatelessWidget {
  // const CatMealScreen(this.catid, this.cattitle);
  // final String catid;
  // final String cattitle;
  static const routeNames = '/category-meal';

  @override
  Widget build(BuildContext context) {
    final routesArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final CateId = routesArg['id'];
    final Catetitle = routesArg['title'];
    final categoriesMeals = Dummy_Meals.where((MealData) {
      return MealData.categories.contains(CateId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Catetitle!,
        ),
      ),
      body: ListView.builder(
        itemCount: categoriesMeals.length,
        itemBuilder: ((context, index) {
          return MealScreen(
              id: categoriesMeals[index].id,
              title: categoriesMeals[index].title,
              imageUrl: categoriesMeals[index].imageUrl,
              durations: categoriesMeals[index].durations,
              affordability: categoriesMeals[index].affordability,
              complexity: categoriesMeals[index].complexity);
        }),
      ),
    );
  }
}
