class Meal {
  final String name;
  final List<String> ingredients;
  final int calories;
  final int protein;
  final int carbs;
  final int fat;
  final String recipeLink;

  Meal({
    required this.name,
    required this.ingredients,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    this.recipeLink = '',
  });
}
