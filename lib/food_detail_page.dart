import 'package:flutter/material.dart';
import 'food_menu.dart';

class FoodDetailPage extends StatelessWidget {
  final FoodMenu food;

  const FoodDetailPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(food.imageAsset, width: double.infinity, height: 200),
            const SizedBox(height: 16.0),
            Text(
              food.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text('Category: ${food.category}'),
            const SizedBox(height: 8.0),
            Text('Description: ${food.description}'),
            const SizedBox(height: 8.0),
            Text('Ingredients: ${food.ingredients}'),
            const SizedBox(height: 8.0),
            Text('Cooking Time: ${food.cookingTime}'),
            const SizedBox(height: 8.0),
            Text('Price: ${food.price}'),
          ],
        ),
      ),
    );
  }
}
