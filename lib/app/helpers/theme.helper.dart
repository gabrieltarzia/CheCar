import 'package:car_review/app/helpers/colors.helper.dart';
import 'package:flutter/material.dart';

class ThemeHelper {
  static const inputFieldTheme = InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colorshelper.primaryColor)),
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: 0.5, color: Colorshelper.primaryColor)));

  static const inputFieldTitleTheme = TextStyle(
      color: Colors.grey, fontFamily: 'Times New Roman', fontSize: 16);
}
