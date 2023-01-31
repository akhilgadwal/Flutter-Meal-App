import 'package:flutter/material.dart';
import 'package:meal_app/screens/filter_screen.dart';

import '../screens/meal_screen.dart';

class DrawerS extends StatelessWidget {
  const DrawerS({super.key});

  //DrawerS({super.key});
  Widget buildListTile(String title, IconData icons, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icons,
        size: 26,
      ),
      title: Text(title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(
            'Cooking is done here',
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //passing ayn
        buildListTile('Meals', Icons.restaurant, () {
          Navigator.of(context).pushReplacementNamed('/');
        }),
        buildListTile('Filter', Icons.settings, () {
          Navigator.of(context).pushReplacementNamed(FilterScreen.routeNames);
        })
      ]),
    );
  }
}
