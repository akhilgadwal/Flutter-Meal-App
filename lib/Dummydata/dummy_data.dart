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
    id: 'T3',
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
    categories: ['T1', 'T2'],
    title: 'tomato',
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
    id: 'M3',
    categories: ['c5', 'c6'],
    title: 'dal-chawal',
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
    id: 'M4',
    categories: ['c7', 'c8'],
    title: 'Noodels',
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
    id: 'M5',
    categories: ['c9', 'c10'],
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
