import 'package:test_app_search_repository/data/search/model/repositories.dart';
import 'package:test_app_search_repository/data/search/repository/search_repository.dart';

class SearchInteractor {
  final SearchRepository _searchRepository;

  SearchInteractor(this._searchRepository);

  Future<List<Repository>> searchRepositories(String query) {
    return _searchRepository.searchRepositories(query);
  }
}
