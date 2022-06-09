import 'dart:math';

import 'package:wallet_app/models/income.dart';

import 'category.dart';

final randomNumber = Random();

_incomes(){
  List<Income> incomes = [
    Income(name : 'Item number 1', price : randomNumber.nextDouble() * 90),
    Income(name : 'Item number 2', price : randomNumber.nextDouble() * 90),
    Income(name : 'Item number 3', price : randomNumber.nextDouble() * 90),
    Income(name : 'Item number 4', price : randomNumber.nextDouble() * 90),
    Income(name : 'Item number 5', price : randomNumber.nextDouble() * 90),
    Income(name : 'Item number 6', price : randomNumber.nextDouble() * 90),
  ];
  return incomes;
}


final List<double> weeklySpending = [       //7 days of week 7 data
  randomNumber.nextDouble() * 100,
  randomNumber.nextDouble() * 100,
  randomNumber.nextDouble() * 100,
  randomNumber.nextDouble() * 100,
  randomNumber.nextDouble() * 100,
  randomNumber.nextDouble() * 100,
  randomNumber.nextDouble() * 100,

];


List<Category> categories = [
  Category('Kids', 330, _incomes()),
  Category('Food', 800, _incomes()),
  Category('Learning', 400, _incomes()),
  Category('Educations', 700, _incomes()),
  Category('Clothes', 1000, _incomes()),
  Category('Gifts', 400, _incomes()),

];
