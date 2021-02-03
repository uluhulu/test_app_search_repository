import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/constants/text.dart';
import 'package:test_app_search_repository/data/search/interactor/search_interactor.dart';
import 'package:test_app_search_repository/di.dart';
import 'package:test_app_search_repository/screens/search_screen/bloc/search_bloc.dart';
import 'package:test_app_search_repository/screens/search_screen/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SearchBloc(
          searchInteractor: getIt<SearchInteractor>(),
        );
      },
      child: Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(
            searchText,
            style: appBarTextStyle,
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 84),
            SearchField(),
          ],
        ),
      ),
    );
  }
}
