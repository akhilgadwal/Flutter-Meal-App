import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_data.dart';
import 'package:meal_app/models/data_model.dart';

const Dummy_data = const [
  Categories(
    id: 'T1',
    title: 'Indian',
    color: Colors.green,
  ),
  Categories(
    id: 'T2',
    title: 'Mexican',
  ),
  Categories(
    id: 'T3',
    title: 'Italian',
  ),
  Categories(
    id: 'T4',
    title: 'Easy&Quick',
    color: Colors.redAccent,
  ),
  Categories(
    id: 'T5',
    title: 'French',
    color: Colors.purple,
  ),
  Categories(
    id: 'T6',
    title: 'Arabian',
    color: Colors.yellowAccent,
  ),
  Categories(
    id: 'T7',
    title: 'Pakistani',
    color: Colors.green,
  ),
  Categories(
    id: 'T8',
    title: 'pure veg',
  ),
  Categories(
    id: 'T9',
    title: 'Non-Veg',
  ),
  Categories(
    id: 'T10',
    title: 'Specilty',
  ),
  Categories(
    id: 'T11',
    title: 'Italian',
  )
];

// ignore: non_constant_identifier_names
const Dummy_Meals = const [
  MealData(
    id: 'c1',
    categories: ['T1'],
    title: 'Spageti',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    durations: 20,
    complexity: Complexity.average,
    affordability: Affordability.average,
    isglutenfree: false,
    isLactosefree: false,
    isvegan: true,
    isVegetarian: false,
  ),
  MealData(
    id: 'M2',
    categories: ['T1', 'T2', 'T3', 'T4', 'T5'],
    title: 'tomato',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    durations: 20,
    complexity: Complexity.average,
    affordability: Affordability.average,
    isglutenfree: false,
    isLactosefree: false,
    isvegan: true,
    isVegetarian: false,
  ),
  MealData(
    id: 'M3',
    categories: ['T4', 'T11', 'T7', 'T10'],
    title: 'dal-chawal',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    durations: 20,
    complexity: Complexity.average,
    affordability: Affordability.average,
    isglutenfree: false,
    isLactosefree: false,
    isvegan: true,
    isVegetarian: false,
  ),
  MealData(
    id: 'M4',
    categories: ['T6', 'T4', 'T7', 'T5', 'T10'],
    title: 'Noodels',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about , and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    durations: 20,
    complexity: Complexity.average,
    affordability: Affordability.average,
    isglutenfree: false,
    isLactosefree: false,
    isvegan: true,
    isVegetarian: false,
  ),
  MealData(
    id: 'M5',
    categories: ['T3', 'T9', 'T1', 'T2'],
    title: 'Spageti',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    durations: 20,
    complexity: Complexity.average,
    affordability: Affordability.average,
    isglutenfree: false,
    isLactosefree: false,
    isvegan: true,
    isVegetarian: false,
  ),
];
