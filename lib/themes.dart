import 'package:flutter/material.dart';

class Themes {
  static ThemeData generateTheme(bool darkMode, {ColorScheme? color}) {
    var brightness = darkMode ? Brightness.dark : Brightness.light;
    var colorScheme = color?.copyWith(brightness: brightness) ??
        ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: brightness,
        );

    return ThemeData(
        splashFactory: InkSparkle.splashFactory,
        useMaterial3: true,
        colorScheme: colorScheme,
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: darkMode ? Colors.white38 : Colors.black38,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: colorScheme.primary,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(shape: RoundedRectangleBorder()),
        popupMenuTheme: PopupMenuThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ));
  }
}
