import 'package:firebase_movies_app/core/config/firebase_movies_app_colors.dart';
import 'package:firebase_movies_app/core/config/firebase_movies_app_text_styles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  final Color? color;
  final TextOverflow? overflow;

  const TextWidget(this.text,
      {required this.style,
      this.textAlign,
      this.color,
      this.overflow,
      super.key});

  //inicialidando um widget de estilização de caracteres
  TextWidget.bold(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? FirebaseMoviesAppTextStyles.getNormalStyle;

  //inicialidando um widget de estilização de caracteres
  TextWidget.title(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? FirebaseMoviesAppTextStyles.getTitleStyle;

  //inicialidando um widget de estilização de caracteres
  TextWidget.normal(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? FirebaseMoviesAppTextStyles.getNormalStyle;

  //inicialidando um widget de estilização de caracteres
  TextWidget.small(
    this.text, {
    super.key,
    TextStyle? textStyle,
    this.textAlign,
    this.color,
    this.overflow,
  }) : style = textStyle ?? FirebaseMoviesAppTextStyles.getSmallStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          style.copyWith(color: color ?? FirebaseMoviesAppColors.whiteColor),
    );
  }
}
