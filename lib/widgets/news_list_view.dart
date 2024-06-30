import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_ui_setup/cubits/show_news_cubit/show_news_cubit.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/views/news_view.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                BlocProvider.of<NewsCubit>(context).getWeb(articles[index].url);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NewsView(url: articles[index].url),
                  ),
                );
              },
              child: NewsTile(
                articleModel: articles[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
