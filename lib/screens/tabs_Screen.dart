import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_data.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/favorite.dart';
import 'package:meal_app/widget/drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<MealData> favouriteMeals;

  TabsScreen(this.favouriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, dynamic>>? _pages;
  int selectedpageIndex = 0;
  @override
  void initState() {
    _pages = [
      {'pages': CategoryScreen(), 'title': 'Categories'},
      {'pages': FavoriteScreen(widget.favouriteMeals), 'title': 'Your Favorite'}
    ];
    // TODO: implement initState
    super.initState();
  }

  void _selectCate(int index) {
    setState(() {
      selectedpageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages?[selectedpageIndex]['title']),
      ),
      drawer: DrawerS(),
      body: _pages?[selectedpageIndex]['pages'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectCate,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        currentIndex: selectedpageIndex,
        type: BottomNavigationBarType.shifting,
        // selectedItemColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.star),
          )
        ],
      ),
    );
  }
}
