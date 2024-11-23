import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;

  
  MealDetailScreen({required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.name),
        backgroundColor: Color(0xFF6A994E),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              meal.ingredients.join(', '),
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            
            
            Text(
              'Calories: ${meal.calories}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            // إضافة تفاصيل إضافية مثل البروتين والكربوهيدرات والدهون
            Text(
              'Protein: ${meal.protein} g',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Carbs: ${meal.carbs} g',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Fat: ${meal.fat} g',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

          
            meal.recipeLink.isNotEmpty
                ? GestureDetector(
                    onTap: () {

                    },
                    child: Text(
                      'View Recipe',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                : Container(),  
          ],
        ),
      ),
    );
  }
}
