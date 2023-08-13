import 'package:bank_layout/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  primarySwatch: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  fontFamily: 'Inter',
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 22,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
      )),
);
