import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:changing_theme_with_caching/core/home_view.dart';
import 'package:changing_theme_with_caching/theme/cubit/theme_cubit.dart';
import 'package:changing_theme_with_caching/theme/themes/dark/dark_theme_custom.dart';
import 'package:changing_theme_with_caching/theme/themes/light/light_theme_custom.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeState) {
        return MaterialApp(
          theme: LightThemeCustom().theme,
          darkTheme: DarkThemeCustom().theme,
          themeMode: themeState,
          home: const HomeView(),
        );
      },
    );
  }
}
