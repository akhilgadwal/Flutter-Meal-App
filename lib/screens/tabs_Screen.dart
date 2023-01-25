import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/favorite.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _page = [
    CategoryScreen(),
    FavoriteScreen(),
  ];
  int selectedpageIndex = 0;

  void _selectCate(int index) {
    setState(() {
      selectedpageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: _page[selectedpageIndex],
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
