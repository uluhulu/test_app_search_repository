import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/color.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/constants/text.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      child: _buildTextField(),
    );
  }

  Widget _buildTextField(){
    return TextField(
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
        child: RaisedButton(
          color: searchButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          onPressed: () {},
          child: Text(
            findText,
            style: searchButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
