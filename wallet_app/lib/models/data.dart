import 'dart:math';

import 'package:wallet_app/models/income.dart';

import 'category.dart';

final randomNumber = Random();

_incomes(){
  List<Income> incomes = [
    Income(name : 'Item number 1', price : randomNumber.nextDouble() * 50),
    Income(name : 'Item number 2', price : randomNumber.nextDouble() * 50),
    Income(name : 'Item number 3', price : randomNumber.nextDouble() * 50),
    Income(name : 'Item number 4', price : randomNumber.nextDouble() * 50),
    Income(name : 'Item number 5', price : randomNumber.nextDouble() * 50),
  ];
  return incomes;
}


final List<double> weeklySpending = [       //7 days of week 7 data
  randomNumber.nextDouble() * 10,
  randomNumber.nextDouble() * 10,
  randomNumber.nextDouble() * 10,
  randomNumber.nextDouble() * 10,
  randomNumber.nextDouble() * 10,
  randomNumber.nextDouble() * 10,
  randomNumber.nextDouble() * 10,
];


List<Category> categories = [
  Category('Kids', 500, _incomes()),
  Category('Food', 800, _incomes()),
  Category('Learning', 300, _incomes()),
  Category('Educations', 120, _incomes()),
  Category('Clothes', 1000, _incomes()),
  Category('Gifts', 400, _incomes()),

];