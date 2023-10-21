import 'package:flutter/material.dart';

final appTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.yellow,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return Colors.yellow;
      }
      return Colors.orange;
    }))),
    textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Color(0xFF5256a9),
            fontSize: 24,
            fontFamily: 'Corben',
            fontWeight: FontWeight.w700)));
