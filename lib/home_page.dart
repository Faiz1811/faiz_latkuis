import 'package:flutter/material.dart';
import 'food_menu.dart';
import 'food_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Makanan'),
      ),
      body: ListView.builder(
        itemCount: foodMenuList.length,
        itemBuilder: (context, index) {
          final food = foodMenuList[index];
          return Card(
            child: ListTile(
              leading: Image.asset(food.imageAsset, width: 50, height: 50),
              title: Text(food.name),
              subtitle: Text(food.category),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailPage(food: food),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
