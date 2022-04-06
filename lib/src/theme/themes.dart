import 'package:flutter/material.dart';

Map<int, Color> baseColorsMap = {
  900: const Color(0xFFFAF5F6),
  700: const Color(0xFFFFCDE2),
  600: const Color(0xFFFF81A9),
  500: const Color(0xFFE91C5D),
  300: const Color(0xFFBD0942),
  200: const Color(0xFF990031),
  100: const Color(0xFF1B0008),
  50: const Color(0xFF080002),
};

Map<int, Color> grayscaleMap = {
  700: const Color(0xFFF7F0F1),
  600: const Color(0xFF999194),
  500: const Color(0xFF736D6F),
  300: const Color(0xFF666163),
  200: const Color(0xFF4C494A),
  100: const Color(0xFF333031),
  50: const Color(0xFF151314),
};

MaterialColor materialBase =
    MaterialColor(baseColorsMap[500]!.value, baseColorsMap);
MaterialColor materialGray =
    MaterialColor(grayscaleMap[500]!.value, grayscaleMap);

ThemeData light = ThemeData(
  brightness: Brightness.light,
  primarySwatch: materialBase,
  scaffoldBackgroundColor: materialBase.shade900,
  appBarTheme: AppBarTheme(
    color: materialGray.shade700,
    iconTheme: IconThemeData(color: materialBase.shade200),
    titleTextStyle: TextStyle(
        color: materialBase.shade200,
        fontSize: 18,
        fontWeight: FontWeight.bold),
  ),
  textTheme: TextTheme(
    // texto do campo de formulário
    subtitle1: TextStyle(
      color: materialGray.shade100,
      fontSize: 20,
    ),
    // label da LabeledText
    bodyText1: TextStyle(
      color: materialBase.shade50,
    ),
    // conteúdo do Widget Text()
    bodyText2: TextStyle(
      color: materialGray.shade100,
    ),
    // texto das perguntas
    headline6: TextStyle(
      color: materialGray.shade50,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    floatingLabelStyle: TextStyle(color: materialGray.shade600),
  ),
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: materialBase,
  scaffoldBackgroundColor: materialGray.shade50,
  appBarTheme: AppBarTheme(color: materialBase.shade300),
  textTheme: TextTheme(
    // texto do campo de formulário
    subtitle1: TextStyle(
      color: materialGray.shade600,
      fontSize: 20,
    ),
    // label da LabeledText
    bodyText1: TextStyle(
      color: materialBase.shade300,
    ),
    // conteúdo do Widget Text()
    bodyText2: TextStyle(
      color: materialGray.shade500,
    ),
    // texto das perguntas
    headline6: TextStyle(
      color: materialGray.shade600,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    floatingLabelStyle: TextStyle(color: materialGray.shade300),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: materialGray.shade100),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: materialGray.shade200),
    ),
  ),
  hintColor: materialGray.shade300,
);
