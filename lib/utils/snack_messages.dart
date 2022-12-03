import 'package:clean_city/Styles/colors.dart';
import 'package:flutter/material.dart';

void showMessages({String? message, BuildContext? context}) {
  ScaffoldMessenger.of(context!).showSnackBar(
    SnackBar(
      content: Text(
        message!,
        style: TextStyle(
          color: white,
        ),
      ),
      backgroundColor: primaryColor,
    ),
  );
}
