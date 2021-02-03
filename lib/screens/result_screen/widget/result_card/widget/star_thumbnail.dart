import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/color.dart';
import 'package:test_app_search_repository/constants/style.dart';

class StarThumbnail extends StatelessWidget {
  final int starCount;

  const StarThumbnail({
    Key key,
    this.starCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: starsThumbnailColor,
          borderRadius: BorderRadius.all(
            Radius.elliptical(50, 50),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.star_border,
              color: starColor,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '$starCount',
              style: starCountStyle,
            ),
          ],
        ),
      ),
    );
  }
}
