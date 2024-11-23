import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/meal_provider.dart';
import '../models/meal.dart';

class AddMealForm extends StatefulWidget {
  @override
  _AddMealFormState createState() => _AddMealFormState();
}

class _AddMealFormState extends State<AddMealForm> {
  final _nameController = TextEditingController();
  final _ingredientsController = TextEditingController();
  final _caloriesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Meal',
          style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF6A994E),
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Meal Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter meal name',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6A994E), width: 2),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ingredients (comma-separated)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _ingredientsController,
              decoration: InputDecoration(
                hintText: 'Enter ingredients',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Calories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _caloriesController,
              decoration: InputDecoration(
                hintText: 'Enter calories',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                final meal = Meal(
                  name: _nameController.text,
                  ingredients: _ingredientsController.text.split(','),
                  calories: int.tryParse(_caloriesController.text) ?? 0,
                  protein: 0,
                  carbs: 0,
                  fat: 0,
                );
                Provider.of<MealProvider>(context, listen: false).addMeal(meal);
                Navigator.pop(context);
              },
              child: Text('Add Meal'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6A994E),
                padding: EdgeInsets.symmetric(vertical: 18),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
