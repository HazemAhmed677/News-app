import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_ui_setup/cubits/show_news_cubit/show_news_cubit.dart';
import 'package:news_app_ui_setup/cubits/show_news_cubit/show_news_states.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key, required this.url});
  final String url;

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  // Initialize the local variable
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<NewsCubit, NewsCubitStates>(
        builder: (context, state) {
          if (state is LoadingNewsState) {
            return const CircularProgressIndicator();
          } else if (state is SuccessNewsState) {
            var controller = BlocProvider.of<NewsCubit>(context).controller;
            return WebViewWidget(
              controller: controller,
            );
          } else {
            return const Scaffold(
              body: Center(
                child: Text('Sorry, this news is not available for now'),
              ),
            );
          }
        },
      ),
    );
  }
}
