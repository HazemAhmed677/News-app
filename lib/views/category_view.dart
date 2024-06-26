import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.08,
                          blurRadius: 20,
                          color: Colors.grey,
                          offset: Offset(
                            3,
                            4,
                          ),
                        )
                      ]),
                  child: Card(
                    elevation: 8,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          category,
                          style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  NewsListViewBuilder(
                    category: category,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
