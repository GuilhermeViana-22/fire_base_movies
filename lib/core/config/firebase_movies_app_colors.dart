import 'package:flutter/material.dart';

class FirebaseMoviesAppColors {
    static final FirebaseMoviesAppColors _singleton = FirebaseMoviesAppColors._internal();

    factory FirebaseMoviesAppColors() {
        return _singleton;
    }
    
    FirebaseMoviesAppColors._internal();

    //Black
    static Color get primaryColor => const Color(262626);

    static Color get secondaryColor => const Color(0xff1962ff);

    static Color get errorColor => const Color(0xffdc3545);

    static Color get favoriteColor =>  Colors.redAccent;

    static Color get whiteColor => const Color(0xffffff);

    static Color get successColor => Color.fromARGB(255, 25, 255, 29);
}