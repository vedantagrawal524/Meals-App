import 'package:flutter/material.dart';
import 'package:meals/data/meals_data.dart';
import 'package:meals/screens/meals_screen.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: 'ss', meals: []),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
        title: const Text('Categories'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 40,
          mainAxisSpacing: 40,
        ),
        children: [
          ...availableCategories
              .map((category) => CategoryGridItem(
                    category: category,
                    onSelectCategory: () {
                      _selectCategory(context);
                    },
                  ))
              .toList(),
        ],
      ),
    );
  }
}
