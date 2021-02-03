import 'dart:convert';

import 'package:test_app_search_repository/data/search/model/repositories.dart';
import 'package:http/http.dart';

class SearchRepository {
  final String searchBaseUrl = 'https://api.github.com/search/';

  Future<List<Repository>> searchRepositories(String query) async {
    var repositoriesResponse = await get(_getSearchRepoUrl(query));
    if (repositoriesResponse.statusCode == 200) {
      final responseJson = jsonDecode(repositoriesResponse.body);
      return Repositories.fromJson(responseJson).items;
    }

    throw Exception("Error search ${repositoriesResponse.statusCode}");
  }

  String _getSearchRepoUrl(String query) {
    return '${searchBaseUrl}repositories?q=$query+in:readme&type=repository';
  }
}
