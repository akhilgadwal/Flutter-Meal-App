import 'dart:html';

import 'package:flutter/material.dart';
import 'package:meal_app/Dummydata/dummy_data.dart';
import 'package:meal_app/models/meal_data.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/meal_detail.dart';
import 'package:meal_app/screens/meal_screen.dart';
import 'package:meal_app/screens/tabs_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'Gluten': false,
    'lactos': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<MealData> _availableMeals = Dummy_Meals;
  //for fav meal data
  List<MealData> _favoriteMeals = Dummy_Meals;

  void _selectFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = Dummy_Meals.where((meal) {
        if (_filters['Gluten']! && !meal.isglutenfree) {
          return false;
        }
        if (_filters['lactos']! && !meal.isLactosefree) {
          return false;
        }
        if (_filters['vegan']! && !meal.isvegan) {
          return false;
        }
        if (_filters['vegetarian']! && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  //creating function for fav-meals
  void _selectFavMeals(String mealId) {
    final exstingMeals = _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (exstingMeals >= 0) {
      setState(() {
        _favoriteMeals.removeAt(exstingMeals);
      });
    } else {
      setState(() {
        _favoriteMeals.add(Dummy_Meals.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CategoryScreen(),
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.yellow,
        canvasColor: Color.fromARGB(255, 220, 223, 150),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(
                fontFamily: "Roboto",
                fontSize: 24,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMeals),
        CatMealScreen.routeNames: (ctx) => CatMealScreen(_availableMeals),
        MealDetailScreen.routeNames: (context) => MealDetailScreen(),
        FilterScreen.routeNames: (context) =>
            FilterScreen(_filters, _selectFilters),
      },
    );
  }
}
