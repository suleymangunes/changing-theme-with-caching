import 'package:flutter/material.dart';

part 'dark_theme_constants.dart';

class DarkThemeCustom {
  late ThemeData theme;

  DarkThemeCustom() {
    theme = ThemeData.dark().copyWith(
      //  CUSTOMIZE AREA
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: DarkThemeColors._appBarBackground,
        titleTextStyle: TextStyle(
          fontSize: DarkThemeString._appBarTitleSize,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(
          size: DarkThemeIcon._iconBigSize / 2,
        ),
      ),
      iconTheme: const IconThemeData(
        size: DarkThemeIcon._iconBigSize,
        color: DarkThemeIcon._iconColor,
      ),
    );
  }
}
