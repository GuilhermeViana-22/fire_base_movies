import 'package:firebase_movies_app/core/factories/api_reposity_factory.dart';
import 'package:provider/provider.dart';

class FirebaseMoviesAppInitialBindings {
  static final FirebaseMoviesAppInitialBindings _singleton =
      FirebaseMoviesAppInitialBindings._internal();

  factory FirebaseMoviesAppInitialBindings() {
    return _singleton;
  }

  FirebaseMoviesAppInitialBindings._internal();

  static List<Provider> dependencies() {
    return [
      makeApiRepository,
    ];
  }
}
