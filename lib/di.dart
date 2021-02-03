import 'package:get_it/get_it.dart';
import 'package:test_app_search_repository/data/search/interactor/search_interactor.dart';
import 'package:test_app_search_repository/data/search/repository/search_repository.dart';

final getIt = GetIt.instance;

void initDi() {
  getIt.registerSingleton<SearchInteractor>(
    SearchInteractor(
      SearchRepository(),
    ),
  );
}
