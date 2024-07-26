import 'package:flutter/material.dart';

import 'firebase_movies_app_colors.dart';

class FirebaseMoviesAppMaterial {
  static final FirebaseMoviesAppMaterial _singleton =
      FirebaseMoviesAppMaterial._internal();

  factory FirebaseMoviesAppMaterial() {
    return _singleton;
  }

  FirebaseMoviesAppMaterial._internal();

  static const String title = "Firebase Movies App Material";

  static const Locale locale = Locale('pt_BR');

  static ThemeData get getTheme => ThemeData(
      scaffoldBackgroundColor: FirebaseMoviesAppColors.primaryColor,
      primaryColor: FirebaseMoviesAppColors.primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: FirebaseMoviesAppColors.primaryColor,
        titleTextStyle: TextStyle(
          color: FirebaseMoviesAppColors.secondaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      fontFamily: 'Lato'
      );
}
