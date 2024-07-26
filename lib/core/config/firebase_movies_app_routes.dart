import 'package:firebase_movies_app/presentation/login/screens/login_screens.dart';
import 'package:firebase_movies_app/presentation/movie_dateils/screens/movie_details_screens.dart';
import 'package:firebase_movies_app/presentation/nav/screens/nav_screens.dart';
import 'package:firebase_movies_app/presentation/signup/screens/signup_screens.dart';
import 'package:firebase_movies_app/presentation/splash/screens/splash_screens.dart';
import 'package:flutter/material.dart';

class FirebaseMoviesAppRoutes {
  static final FirebaseMoviesAppRoutes _singleton =
      FirebaseMoviesAppRoutes._internal();

  factory FirebaseMoviesAppRoutes() {
    return _singleton;
  }

  FirebaseMoviesAppRoutes._internal();

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      SplashScreens.routeName: (_) {
        return const SplashScreens();
      },
      LoginScreens.routeName: (_) {
        return const LoginScreens();
      },
      SignupScreens.routeName: (_) {
        return const SignupScreens();
      },
      NavScreens.routeName: (_) {
        return const NavScreens();
      },
      MovieDetailsScreens.routeName: (_) {
        return const MovieDetailsScreens();
      },
    };
  }
}
