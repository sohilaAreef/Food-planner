import 'package:flutter/material.dart';
import 'package:nutri_plan/models/meal.dart'; 
import 'package:nutri_plan/ui/meal_detail.dart'; 
class MealCard extends StatelessWidget {
  final String day;
  final String mealName;
  final int calories;
  final Meal meal;  
  MealCard({
    required this.day,
    required this.mealName,
    required this.calories,
    required this.meal,  
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      color: Colors.white,
      elevation: 6,
      shadowColor: Colors.black.withOpacity(0.2), 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        title: Text(
          mealName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arial',
            color: Color(0xFF6A994E),
          ),
        ),
        subtitle: Text(
          'Calories: $calories',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        leading: Icon(
          Icons.fastfood,
          color: Color(0xFF6A994E),
          size: 40,
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF6A994E)),
        onTap: () {
          
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MealDetailScreen(meal: meal),
            ),
          );
        },
      ),
    );
  }
}
