import 'package:flutter/material.dart';
import 'package:shop/core/utils/constance.dart';

abstract class ThemeRepo {
  static ThemeData Theme(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? AppColors.kDarktScaffoldColor
          : AppColors.kLightScaffoldColor,
      cardColor: isDarkTheme
          ? AppColors.kdarkCardColor
          : AppColors.kLightScaffoldColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );
  }
}
