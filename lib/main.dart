import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/color.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/di.dart';
import 'package:test_app_search_repository/screens/result_screen/result_screen.dart';
import 'package:test_app_search_repository/screens/search_screen/search_screen.dart';

void main() {
  initDi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: backgroundColor,
        inputDecorationTheme: theme,
      ),
      home: SearchScreen(),
    );
  }
}
