import 'package:flutter/material.dart';
import 'package:futurehome_test1/gen/colors.gen.dart';

const double _buttonBorderRadius = 15.0;
const double _textButtonFontSize = 11.0;
const double _textButtonLetterSpacing = 1.4;

ButtonStyle customTextButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith((states) => ColorName.chipBackground),
    foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
    shape: MaterialStateProperty.resolveWith(
        (states) => const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(_buttonBorderRadius)))),
    textStyle: MaterialStateProperty.resolveWith((states) => _textButtonTextStyle),
    padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 10.0)));

TextStyle _textButtonTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: _textButtonFontSize,
    fontWeight: FontWeight.w700,
    letterSpacing: _textButtonLetterSpacing);
