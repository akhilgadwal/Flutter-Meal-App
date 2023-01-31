import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_data.dart';

import '../screens/meal_detail.dart';

class MealScreen extends StatelessWidget {
  MealScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.durations,
      required this.affordability,
      required this.complexity,
      required this.removeItem});
  final String id;
  final String title;
  final String imageUrl;
  final int durations;
  final Affordability affordability;
  final Complexity complexity;
  final Function removeItem;

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealDetailScreen.routeNames,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        removeItem(result);
      }
    });
  }

  String get ComplexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';

      case Complexity.average:
        return 'Average';

      case Complexity.hard:
        return 'Hard';
    }
  }

  String get AffordabilityText {
    switch (affordability) {
      case Affordability.price:
        return 'Price';
      case Affordability.average:
        return 'Average';
      case Affordability.luxrious:
        return 'Luxury';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        elevation: 4,
        margin: EdgeInsets.all(15),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 220,
                  color: Colors.black54,
                  child: Text(
                    title,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 10,
                    ),
                    Text('$durations min')
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(
                      width: 10,
                    ),
                    Text(ComplexityText)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.currency_exchange),
                    SizedBox(
                      width: 10,
                    ),
                    Text(AffordabilityText)
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
