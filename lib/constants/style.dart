import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/color.dart';

final theme = InputDecorationTheme(
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      const Radius.circular(50.0),
    ),
    borderSide: BorderSide(
      color: Colors.grey.withOpacity(0.3),
    ),
  ),
);

final searchButtonTextStyle = TextStyle(
  color: searchButtonTextColor,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

final appBarTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

final queryHeaderGreyStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: queryHeaderGreyColor,
);

final queryHeaderBlueStyle = queryHeaderGreyStyle.copyWith(
  color: queryHeaderBlueColor,
);

final starCountStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: starCountColor,
);

final repoNameStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: repoNameColor,
);

final userNameStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: userNameColor,
);

final updateTextStyle = TextStyle(
  fontSize: 10,
  color: updateTextColor,
);

final updateText2Style = TextStyle(
  fontSize: 10,
  color: updateText2Color,
);
