import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/Dummydata/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  Widget buildSectiontitle(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }

  Widget buildcontainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 300,
      width: double.infinity,
      child: child,
    );
  }

  static const routeNames = '/Meal-Details';

  @override
  Widget build(BuildContext context) {
    final mealID = ModalRoute.of(context)!.settings.arguments as String;
    final selectMeal = Dummy_Meals.firstWhere(
      (meal) => meal.id == mealID,
    );
    return Scaffold(
      appBar: AppBar(title: Text('${selectMeal.title}')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectMeal.imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            buildSectiontitle(context, 'Ingredeint'),
            buildcontainer(
              ListView.builder(
                itemCount: selectMeal.ingredients.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Text(selectMeal.ingredients[index]),
                  );
                },
              ),
            ),
            buildSectiontitle(context, 'Steps'),
            buildcontainer(
              ListView.builder(
                  itemCount: selectMeal.steps.length,
                  itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(
                          child: Text('#${(index + 1)}'),
                        ),
                        title: Text(selectMeal.steps[index]),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
