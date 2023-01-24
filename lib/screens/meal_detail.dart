import 'package:flutter/cupertino.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  static const routeNames = '/Meal-Details';

  @override
  Widget build(BuildContext context) {
    final mealID = ModalRoute.of(context)?.settings.arguments as String;
    return Center(
      child: Text(
        'Thats the Meals - $mealID',
      ),
    );
  }
}
