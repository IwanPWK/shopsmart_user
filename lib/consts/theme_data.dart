import 'package:flutter/material.dart';

import 'app_colors.dart';

// use BuildContext if  want specific
class Styles {
  static ThemeData themeData({required bool isDarkTheme}) {
    return ThemeData(
        scaffoldBackgroundColor: isDarkTheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
        cardColor: isDarkTheme
            ? const Color.fromARGB(255, 13, 6, 37)
            : AppColors.lightCardColor,
        brightness:
            isDarkTheme ? Brightness.dark : Brightness.light); // for text
  }
}
