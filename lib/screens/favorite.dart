import 'package:flutter/cupertino.dart';
import 'package:meal_app/models/meal_data.dart';

class FavoriteScreen extends StatelessWidget {
  final List<MealData> favMeal;

  FavoriteScreen(this.favMeal);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('you not have Favorite Meal'),
    );
  }
}
