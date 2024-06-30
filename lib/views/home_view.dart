import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/custom_app_bar.dart';

import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomAppBar(),
              Expanded(
                child: CustomScrollView(
                  physics: BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: CategoriesListView(),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 26,
                      ),
                    ),
                    NewsListViewBuilder(
                      category: 'general',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
