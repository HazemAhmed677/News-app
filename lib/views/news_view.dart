import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.url});
  final String url;
  // Initialize the local variable

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: getWeb(url),
    );
  }
}
