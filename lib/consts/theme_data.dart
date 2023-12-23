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
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: isDarkTheme ? Colors.red : Colors.orange,
        ),
        backgroundColor: isDarkTheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
      ),
      dividerColor: isDarkTheme ? Colors.white : Colors.black,
      // iconButtonTheme: IconButtonThemeData(
      //   style: ButtonStyle(
      //       side: MaterialStatePropertyAll(
      //           BorderSide(color: isDarkTheme ? Colors.white : Colors.black))),
      // ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: isDarkTheme ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
