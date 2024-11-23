import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/meal_provider.dart';  
import 'meal_card.dart';
import 'add_meal_form.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meals = Provider.of<MealProvider>(context).meals;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NutriPlan Meal Planner',
          style: TextStyle(
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFF6A994E),
        elevation: 10,
      ),
      body: meals.isEmpty
          ? Center(
              child: Text(
                'No meals added yet.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[600],
                  fontFamily: 'Arial',
                ),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(15),
              itemCount: meals.length,
              itemBuilder: (context, index) {
                final meal = meals[index];  

                return MealCard(
                  meal: meal,  
                  mealName: meal.name,
                  calories: meal.calories,
                  day: 'Meal ${index + 1}',
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddMealForm()),
          );
        },
        child: Icon(Icons.add, size: 30),
        backgroundColor: Color(0xFFFFB703),
        elevation: 12,
      ),
    );
  }
}
