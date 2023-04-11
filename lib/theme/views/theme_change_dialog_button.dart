import 'package:flutter/material.dart';
import 'package:changing_theme_with_caching/product/constants_string.dart';
import 'package:changing_theme_with_caching/product/icon_constants.dart';
import 'package:changing_theme_with_caching/theme/components/theme_change_dropdown.dart';

class ThemeChangeDialogButton extends StatelessWidget {
  const ThemeChangeDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showDialog(context);
      },
      child: const ListTile(
        leading: IconConstants.themeIcon,
        title: Text(StringConstants.theme),
      ),
    );
  }

  Future<dynamic> _showDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text(StringConstants.themeChoose),
        content: ThemeChangeDropdown(),
      ),
    );
  }
}
