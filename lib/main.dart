import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:changing_theme_with_caching/app.dart';
import 'package:changing_theme_with_caching/cubit_observer.dart';
import 'package:changing_theme_with_caching/theme/cubit/theme_cubit.dart';
import 'package:changing_theme_with_caching/theme/hive/theme_caching.dart';

Future<void> main() async {
  await ThemeCaching.init();
  Bloc.observer = CubitObserver();
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: const MyApp(),
    ),
  );
}
