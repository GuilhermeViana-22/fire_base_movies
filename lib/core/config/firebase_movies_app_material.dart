import 'firebase_movies_app_colors.dart';

class FirebaseMoviesAppMaterial {
  static final FirebaseMoviesAppMaterial _singleton = FirebaseMoviesAppMaterial._internal();

  factory FirebaseMoviesAppMaterial() {
    return _singleton;
  }
  
  FirebaseMoviesAppMaterial._internal();

  static const String title = "Firebase Movies App Material";

  static const Locale locale = Locale('pt_BR');

  static ThemeData get getTheme => ThemeData(
    scaffoldBackgroundColor: FirebaseMoviesAppColors.primaryColor;
  );



  
}