import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_search_repository/constants/color.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/constants/text.dart';
import 'package:test_app_search_repository/screens/result_screen/result_screen.dart';
import 'package:test_app_search_repository/screens/search_screen/bloc/search_bloc.dart';
import 'package:test_app_search_repository/screens/search_screen/bloc/search_event.dart';
import 'package:test_app_search_repository/screens/search_screen/bloc/search_state.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      child: _buildTextField(),
    );
  }

  Widget _buildTextField() {
    return TextField(
      controller: textController,
      autofocus: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: 12,
          right: 6,
          bottom: 20,
          top: 4,
        ),
        suffix: _buildButton(),
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Container(
        height: 42,
        child: BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) {
            if (state is SearchError) {
              showErrorSnackbar();
            }
            if (state is SearchComplete) {
              navigateToResult(state);
            }
          },
          builder: (context, state) {
            return RaisedButton(
              color: searchButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              onPressed: state is! SearchLoading
                  ? () {
                      searchEvent(context);
                    }
                  : null,
              child: state is SearchLoading
                  ? Text(loaderText, style: searchButtonTextStyle)
                  : Text(findText, style: searchButtonTextStyle),
            );
          },
        ),
      ),
    );
  }

  void searchEvent(BuildContext context) {
    BlocProvider.of<SearchBloc>(context).add(SearchEvent(textController.text));
  }

  void showErrorSnackbar() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(searchError),
      ),
    );
  }

  void navigateToResult(SearchComplete state) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          repositories: state.repoList,
          query: textController.text,
        ),
      ),
    );
  }
}
