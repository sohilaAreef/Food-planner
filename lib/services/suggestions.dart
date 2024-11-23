import '../models/meal.dart';

class MealSuggestions {
  static List<Meal> generateSuggestions() {
    return [
      Meal(
        name: 'Grilled Chicken',
        ingredients: ['Chicken', 'Spices'],
        calories: 300,
        protein: 30,
        carbs: 10,
        fat: 5,
      ),
      Meal(
        name: 'Vegan Salad',
        ingredients: ['Lettuce', 'Tomato', 'Cucumber'],
        calories: 150,
        protein: 5,
        carbs: 10,
        fat: 2,
      ),
    ];
  }
}
