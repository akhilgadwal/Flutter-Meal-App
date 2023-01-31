import 'package:flutter/material.dart';
import 'package:meal_app/Dummydata/dummy_data.dart';
import 'package:meal_app/widget/meal_Screens.dart';
import 'package:meal_app/models/meal_data.dart';

class CatMealScreen extends StatefulWidget {
  // const CatMealScreen(this.catid, this.cattitle);
  // final String catid;
  // final String cattitle;
  static const routeNames = '/category-meal';
  final List<MealData> availableMeals;

  CatMealScreen(this.availableMeals);

  @override
  State<CatMealScreen> createState() => _CatMealScreenState();
}

class _CatMealScreenState extends State<CatMealScreen> {
  String? categoryTitle;
  List<MealData>? displayedMeals;
  var _dataisLoad = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_dataisLoad) {
      final routesArg =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      final Catetitle = routesArg['id'];
      categoryTitle = routesArg['title'].toString();
      displayedMeals = widget.availableMeals.where((MealData) {
        return MealData.categories.contains(Catetitle);
      }).toList();
      _dataisLoad = true;
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  void _removemeal(String mealId) {
    setState(() {
      displayedMeals?.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    // final routesArg =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    // final CateId = routesArg['id'];
    // final Catetitle = routesArg['title'];
    // final categoriesMeals = Dummy_Meals.where((MealData) {
    //   return MealData.categories.contains(CateId);
    // }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle.toString(),
        ),
      ),
      body: ListView.builder(
        itemCount: displayedMeals?.length,
        itemBuilder: ((context, index) {
          return MealScreen(
            id: displayedMeals![index].id,
            title: displayedMeals![index].title,
            imageUrl: displayedMeals![index].imageUrl,
            durations: displayedMeals![index].durations,
            affordability: displayedMeals![index].affordability,
            complexity: displayedMeals![index].complexity,
            removeItem: _removemeal,
          );
        }),
      ),
    );
  }
}
