import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_ui_setup/cubits/show_news_cubit/show_news_states.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsCubit extends Cubit<NewsCubitStates> {
  NewsCubit() : super(InitialNewsState());
  WebViewController? getWeb(String url) {
    emit(LoadingNewsState());
    try {
      var controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(url));
      emit(SuccessNewsState());
      return controller;
    } catch (e) {
      emit(FailureNewsState(e.toString()));
    }
    return null;
  }
}
