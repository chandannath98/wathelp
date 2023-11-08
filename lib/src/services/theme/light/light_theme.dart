import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';

import '../extensions/colors_theme.dart';

const _theme = Colors.white;
const _opposite = Colors.black;
const _extraColor = Color(0xffF8B6C0);
const _mainAccent = Color(0xffF2B872);
const _primaryColor = Color(0xff0A65CC); //
const _primaryAccent = Color(0xff96D9A0);
const _extraTextColor = Color(0xff18191C);
const _secondaryAccent = Color(0xff474C54);
const _backgroundColor = Color(0xffEDEFF5);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: GoogleFonts.interTextTheme(),
  iconTheme: const IconThemeData(
    color: _primaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size.fromHeight(40),
      foregroundColor: _theme,
      backgroundColor: _primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    isDense: true,
    border: InputBorder.none,
    contentPadding: vertical8,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _primaryColor,
      ),
    ),
  ),
  extensions: {
    ColorTheme(
      theme: _theme,
      opposite: _opposite,
      extra: _extraColor,
      mainAccent: _mainAccent,
      primary: _primaryColor,
      primaryAccent: _primaryAccent,
      extraText: _extraTextColor,
      secondaryAccent: _secondaryAccent,
      background: _backgroundColor,
    ),
  },
);
