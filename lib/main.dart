import 'package:flutter/material.dart';

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
