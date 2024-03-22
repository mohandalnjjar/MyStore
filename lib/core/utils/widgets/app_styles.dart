import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle styleSemiBold24 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 24,
      overflow: TextOverflow.ellipsis);

  static const TextStyle styleSemiBold20 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      overflow: TextOverflow.ellipsis);

  static const TextStyle styleSemiBold18 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      overflow: TextOverflow.ellipsis);
  static const TextStyle styleSemiBold35 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 35,
      overflow: TextOverflow.ellipsis,
      color: Colors.red);

  static const TextStyle styleSemiReqular19 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 19,
    overflow: TextOverflow.ellipsis,
  );
}
