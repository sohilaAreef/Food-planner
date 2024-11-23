import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealProvider with ChangeNotifier {
  final List<Meal> _meals = [];

  List<Meal> get meals => _meals;

  void addMeal(Meal meal) {
    _meals.add(meal);
    notifyListeners();
  }
}
