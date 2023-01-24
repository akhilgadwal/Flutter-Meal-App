//creatin enums
import 'package:flutter/cupertino.dart';

enum Complexity {
  simple,
  average,
  hard,
}

enum Affordability {
  average,
  price,
  luxrious,
}

class MealData {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int durations;
  final Complexity complexity;
  final Affordability affordability;
  final bool isglutenfree;
  final bool isLactosefree;
  final bool isvegan;
  final bool isVegetarian;

  const MealData({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.durations,
    required this.complexity,
    required this.affordability,
    required this.isglutenfree,
    required this.isLactosefree,
    required this.isvegan,
    required this.isVegetarian,
  });
}
