import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/color.dart';
import 'package:test_app_search_repository/screens/result_screen/widget/result_card/widget/result_card_body.dart';
import 'package:test_app_search_repository/screens/result_screen/widget/result_card/widget/star_thumbnail.dart';

class ResultCard extends StatelessWidget {
  final int starCount;
  final String repoName;

  const ResultCard({
    Key key,
    this.starCount,
    this.repoName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: resultCardBorderColor),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 12,
            bottom: 16,
          ),
          child: Stack(
            children: [
              StarThumbnail(starCount: 60),
              ResultCardBody(
                repoName: 'asshole',
                userName: "shit",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
