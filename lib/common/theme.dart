import 'package:flutter/material.dart';
import 'package:shopping_provider_app/common/colors.dart';
import 'package:shopping_provider_app/common/theme.dart';



final appTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.yellow,
    textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Color(0xFF5256a9),
            fontSize: 24,
            fontFamily: 'Corben',
            fontWeight: FontWeight.w700)));
