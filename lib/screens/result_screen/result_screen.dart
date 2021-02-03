import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/constants/text.dart';
import 'package:test_app_search_repository/screens/result_screen/widget/result_card/result_card.dart';
import 'package:test_app_search_repository/screens/result_screen/widget/result_header.dart';

class ResultScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResultScreenState();
  }
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(
          searchResultText,
          style: appBarTextStyle,
        ),
      ),
      body: _buildResultsList(),
    );
  }

  Widget _buildResultsList() {
    return ListView(
      children: [
        ResultHeader(
          queryName: "asshole",
          resultsCount: 10,
        ),
        ResultCard(
          starCount: 10,
        ),
      ],
    );
  }
}
