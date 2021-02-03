import 'package:test_app_search_repository/data/search/model/repositories.dart';

class SearchState {}

class SearchLoading extends SearchState {}

class SearchComplete extends SearchState {
  final List<Repository> repoList;
  final String query;

  SearchComplete({
    this.repoList,
    this.query,
  });
}

class SearchError extends SearchState {}
