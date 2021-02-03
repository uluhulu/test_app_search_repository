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
