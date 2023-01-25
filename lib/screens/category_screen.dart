import 'package:flutter/material.dart';
import 'package:meal_app/Dummydata/dummy_data.dart';
import 'package:meal_app/widget/category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   title: Text(
        //     'Meal-App',
        //   ),
        // ),
        body: GridView(
      padding: EdgeInsets.all(12),
      children: Dummy_data.map((catdata) =>
          CategoryItem(catdata.id, catdata.title, catdata.color)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 3 / 2,
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    ));
  }
}
