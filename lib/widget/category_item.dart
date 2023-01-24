import 'package:flutter/material.dart';
import 'package:meal_app/screens/meal_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(this.id, this.title, this.color);
  final String id;
  final String title;
  final Color color;

  void categoryScreen(BuildContext context) {
    Navigator.of(context).pushNamed(CatMealScreen.routeNames,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => categoryScreen(context)),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(
        12,
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
      ),
    );
  }
}
