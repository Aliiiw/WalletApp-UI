import 'package:flutter/foundation.dart';

import 'income.dart';

class Category{
  final String name;
  final double maxPrice;
  final List<Income> incomes;

  Category(
      this.name,
      this.maxPrice,
      this.incomes
      );

}