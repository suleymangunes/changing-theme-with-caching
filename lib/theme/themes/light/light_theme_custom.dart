import 'package:flutter/material.dart';

part 'light_theme_constants.dart';

class LightThemeCustom {
  late ThemeData theme;

  LightThemeCustom() {
    theme = ThemeData.light().copyWith(
      //  CUSTOMIZE AREA
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: LightThemeColors._appBarBackground,
        titleTextStyle: TextStyle(
          fontSize: LightThemeString._appBarTitleSize,
          color: Colors.black,
        ),
        iconTheme: IconThemeData(
          size: LightThemeIcon._iconBigSize / 2,
        ),
      ),
      iconTheme: const IconThemeData(
        size: LightThemeIcon._iconBigSize,
        color: LightThemeIcon._iconColor,
      ),
    );
  }
}
