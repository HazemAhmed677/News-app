import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/businesss.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/general.jpg',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
