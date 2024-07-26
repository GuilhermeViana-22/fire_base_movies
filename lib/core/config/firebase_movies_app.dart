import 'package:firebase_movies_app/core/config/firebase_movies_app_initial_bindings.dart';
import 'package:firebase_movies_app/core/config/firebase_movies_app_material.dart';
import 'package:firebase_movies_app/core/config/firebase_movies_app_routes.dart';
import 'package:firebase_movies_app/presentation/splash/screens/splash_screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirebaseMoviesApp extends StatelessWidget {
  const FirebaseMoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: FirebaseMoviesAppInitialBindings.dependencies(),
      child: MaterialApp(
        title: FirebaseMoviesAppMaterial.title,
        theme: FirebaseMoviesAppMaterial.getTheme,
        initialRoute: SplashScreens.routeName,
        routes: FirebaseMoviesAppRoutes.getRoutes(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
