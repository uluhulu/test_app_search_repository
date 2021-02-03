import 'package:bloc/bloc.dart';
import 'package:test_app_search_repository/data/search/interactor/search_interactor.dart';
import 'package:test_app_search_repository/screens/search_screen/bloc/search_event.dart';
import 'package:test_app_search_repository/screens/search_screen/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchInteractor searchInteractor;

  SearchBloc({this.searchInteractor}) : super(SearchState());

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    yield* _mapSearchEvent(event);
  }

  Stream<SearchState> _mapSearchEvent(SearchEvent event) async* {
    try {
      yield SearchLoading();
      final repositories = await searchInteractor.searchRepositories(
        event.query,
      );
      yield SearchComplete(
        query: event.query,
        repoList: repositories,
      );
    } catch (e) {
      yield SearchError();
    }
  }
}
