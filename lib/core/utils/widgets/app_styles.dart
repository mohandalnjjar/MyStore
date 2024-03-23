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
      color: Colors.red,);

  static const TextStyle styleReqular19 = TextStyle(
    fontSize: 19,
    overflow: TextOverflow.ellipsis,
  );

  static const TextStyle styleReqular16 = TextStyle(
    fontSize: 16,
    overflow: TextOverflow.ellipsis,
  );

  static const TextStyle styleReqularGreen16 =
      TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 16);
}
