abstract class NewsCubitStates {}

class InitialNewsState extends NewsCubitStates {}

class LoadingNewsState extends NewsCubitStates {}

class SuccessNewsState extends NewsCubitStates {}

class FailureNewsState extends NewsCubitStates {
  FailureNewsState(String errorMsg);
}
