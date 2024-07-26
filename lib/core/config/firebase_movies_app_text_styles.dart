import 'package:firebase_movies_app/core/config/firebase_movies_app_colors.dart';
import 'package:flutter/material.dart';

class FirebaseMoviesAppTextStyles {
  static final FirebaseMoviesAppTextStyles _singleton =
      FirebaseMoviesAppTextStyles._internal();

  factory FirebaseMoviesAppTextStyles() {
    return _singleton;
  }

  FirebaseMoviesAppTextStyles._internal();

  static TextStyle get getNormalStyle => TextStyle(
        color: FirebaseMoviesAppColors.whiteColor,
        fontSize: 14,
      );

  static TextStyle get getBoldStyle => getNormalStyle.copyWith(
        fontWeight: FontWeight.bold,
      );

  static TextStyle get getTitleStyle => getNormalStyle.copyWith(
        fontSize: 24,
      );

  static TextStyle get getSmallStyle => getNormalStyle.copyWith(
        fontSize: 12,
      );
}
