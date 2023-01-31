import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/widget/drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeNames = '/flitersRoutes';
  final Function _saveFilters;
  final Map<String, bool> currentfilters;

  ////////////////
  FilterScreen(this.currentfilters, this._saveFilters);
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _isGtf = false;
  var _vege = false;
  var _nonVege = false;
  var lactosfree = false;

  //creating initstate
  @override
  void initState() {
    _isGtf = widget.currentfilters['Gluten']!;
    _vege = widget.currentfilters['vegetarian']!;
    _nonVege = widget.currentfilters['vegan']!;
    lactosfree = widget.currentfilters['lactos']!;
    super.initState();
  }

  //builder Methods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your-Filters'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                final _selectedFilters = {
                  'Gluten': _isGtf,
                  'lactos': lactosfree,
                  'vegan': _vege,
                  'vegetarian': _nonVege,
                };
                widget._saveFilters(_selectedFilters);
              },
              icon: Icon(Icons.save),
            )
          ],
        ),
        drawer: DrawerS(),
        body: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  'Adjust your Meals sections',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                    title: Text(
                      'Gluten-Free',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: _isGtf,
                    subtitle: Text(
                      'Is Totaly gluten free',
                      style: TextStyle(color: Colors.black),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        _isGtf = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text(
                      'Vegetarian',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: _vege,
                    subtitle: Text(
                      'Pure Vegetarian',
                      style: TextStyle(color: Colors.black),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        _vege = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text(
                      'Non-Vegetarin',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: _nonVege,
                    subtitle: Text(
                      'Non-Veg',
                      style: TextStyle(color: Colors.black),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        _nonVege = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text(
                      'lactos-Free',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: lactosfree,
                    subtitle: Text(
                      'Is lactos free ',
                      style: TextStyle(color: Colors.black),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        lactosfree = newValue;
                      });
                    })
              ],
            ))
          ],
        ));
  }
}
