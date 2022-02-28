import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/color.dart';

class TextStyleApp {
  static TextStyle xl({
    Color color = ColorApp.baseAccentColor,
    bool isBold = false,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        decoration: decoration,
        color: color,
        fontSize: 22,
      );

  static TextStyle l({
    Color color = ColorApp.baseAccentColor,
    bool isBold = false,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        decoration: decoration,
        color: color,
        fontSize: 18,
      );

  static TextStyle m({
    Color color = ColorApp.baseAccentColor,
    bool isBold = false,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        decoration: decoration,
        color: color,
        fontSize: 16,
      );

  static TextStyle s({
    Color color = ColorApp.baseAccentColor,
    bool isBold = false,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        decoration: decoration,
        color: color,
        fontSize: 14,
      );

  static TextStyle xs({
    Color color = ColorApp.baseAccentColor,
    bool isBold = false,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        decoration: decoration,
        color: color,
        fontSize: 12,
      );
}
