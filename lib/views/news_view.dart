import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsView extends StatelessWidget {
  NewsView({super.key, required this.url});
  final String url;
  // Initialize the local variable

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: getWeb(url),
    );
  }

  WebViewController getWeb(String url) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));
    return controller;
  }
}
