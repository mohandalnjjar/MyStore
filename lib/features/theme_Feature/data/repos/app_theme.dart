import 'package:flutter/material.dart';
import 'package:shop/core/utils/constance.dart';

abstract class ThemeRepo {
  static ThemeData theme(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isDarkTheme ? AppColors.kdarkCardColor : Colors.green,
          elevation: 0,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      scaffoldBackgroundColor: isDarkTheme
          ? AppColors.kDarktScaffoldColor
          : AppColors.kLightScaffoldColor,
      cardColor: isDarkTheme
          ? AppColors.kdarkCardColor
          : AppColors.kLightScaffoldColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme
            ? AppColors.kDarktScaffoldColor
            : AppColors.kLightScaffoldColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: isDarkTheme
            ? AppColors.kdarkCardColor
            : Colors.grey.withOpacity(0.2),
        contentPadding: const EdgeInsets.all(15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
