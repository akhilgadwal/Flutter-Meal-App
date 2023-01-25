import 'package:flutter/material.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/meal_detail.dart';
import 'package:meal_app/screens/meal_screen.dart';
import 'package:meal_app/screens/tabs_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CategoryScreen(),
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.yellow,
        canvasColor: Color.fromRGBO(22, 39, 49, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(
                fontFamily: "Roboto",
                fontSize: 24,
              ),
            ),
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        CatMealScreen.routeNames: (ctx) => CatMealScreen(),
        MealDetailScreen.routeNames: (context) => MealDetailScreen()
      },
    );
  }
}
