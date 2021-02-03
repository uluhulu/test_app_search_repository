import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/constants/text.dart';
import 'package:test_app_search_repository/screens/search_screen/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
