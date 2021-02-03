import 'package:flutter/cupertino.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/constants/text.dart';

class ResultHeader extends StatelessWidget {
  final String queryName;
  final int resultsCount;

  const ResultHeader({
    Key key,
    this.queryName,
    this.resultsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 19),
        _buildQueryName(),
        SizedBox(height: 8),
        _buildResultsCount(),
      ],
    );
  }

  Widget _buildQueryName() {
    return RichText(
      text: TextSpan(
        text: queryResultText,
        style: queryHeaderGreyStyle,
        children: [
          TextSpan(
            text: '"$queryName"'.toUpperCase(),
            style: queryHeaderBlueStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildResultsCount() {
    return Text(
      '$queryResultCountText $resultsCount',
      style: queryHeaderGreyStyle,
    );
  }
}
