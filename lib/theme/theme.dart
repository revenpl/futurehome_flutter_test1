import 'package:flutter/material.dart';
import 'package:futurehome_test1/gen/colors.gen.dart';
import 'package:futurehome_test1/theme/style.dart';
import 'package:google_fonts/google_fonts.dart';

const double _cardBorderRadius = 15.0;
const double _textSize = 13.0;
const double _labelTextSize = 11.0;
const double _cardElevation = 0;

ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textButtonTheme: TextButtonThemeData(style: customTextButtonStyle),
  textTheme: GoogleFonts.openSansTextTheme(
    const TextTheme(
        headline1: TextStyle(fontSize: _textSize, fontWeight: FontWeight.w600, color: ColorName.blackFont),
        headline2: TextStyle(fontSize: _labelTextSize, fontWeight: FontWeight.w700, color: ColorName.blackFont),
        bodyText1: TextStyle(fontSize: _textSize, color: ColorName.blackFont),
        bodyText2: TextStyle(fontSize: _textSize, fontWeight: FontWeight.w600, color: ColorName.customOrange)),
  ),
  errorColor: ColorName.customOrange,
  cardTheme: CardTheme(
    elevation: _cardElevation,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: ColorName.cardBorder),
      borderRadius: BorderRadius.circular(_cardBorderRadius),
    ),
  ),
);
