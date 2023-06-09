import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:changing_theme_with_caching/theme/hive/theme_caching.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeCaching.initialTheme());

  void makelight() {
    ThemeCaching.makelight();
    emit(ThemeMode.light);
  }

  void makeDark() {
    ThemeCaching.makeDark();
    emit(ThemeMode.dark);
  }

  void makeSystem() {
    ThemeCaching.makeSystem();
    emit(ThemeMode.system);
  }
}
