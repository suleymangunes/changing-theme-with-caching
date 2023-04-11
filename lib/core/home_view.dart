import 'package:flutter/material.dart';
import 'package:changing_theme_with_caching/product/constants_string.dart';
import 'package:changing_theme_with_caching/theme/views/theme_change_dialog_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstants.appTitle),
      ),
      body: const ThemeChangeDialogButton(),
    );
  }
}
