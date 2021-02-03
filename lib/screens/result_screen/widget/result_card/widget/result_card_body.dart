import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_search_repository/constants/color.dart';
import 'package:test_app_search_repository/constants/style.dart';
import 'package:test_app_search_repository/constants/text.dart';

class ResultCardBody extends StatelessWidget {
  final String repoName;
  final String userName;
  final String avatarUrl;
  final String date;

  const ResultCardBody({
    Key key,
    this.repoName,
    this.userName,
    this.avatarUrl,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRepoName(),
        SizedBox(height: 4),
        _buildUserInfoRow(),
        SizedBox(height: 8),
        _buildSeparator(),
        SizedBox(height: 12),
        _buildUpdateDate(),
      ],
    );
  }

  Widget _buildRepoName() {
    return Text(
      repoName,
      style: repoNameStyle,
    );
  }

  Widget _buildUserInfoRow() {
    return Row(
      children: [
        _buildCircleAvatar(),
        SizedBox(width: 8),
        _buildUserName(),
      ],
    );
  }

  Widget _buildCircleAvatar() {
    return Container(
      width: 30,
      height: 30,
      decoration: new BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(avatarUrl),
        ),
      ),
    );
  }

  Widget _buildUserName() {
    return Text(
      userName,
      style: userNameStyle,
    );
  }

  Widget _buildSeparator() {
    return Container(
      height: 1,
      width: double.infinity,
      color: separatorColor,
    );
  }

  Widget _buildUpdateDate() {
    return RichText(
      text: TextSpan(
        text: updateText,
        style: updateTextStyle,
        children: [
          TextSpan(
            text: date,
            style: updateText2Style,
          ),
        ],
      ),
    );
  }
}
