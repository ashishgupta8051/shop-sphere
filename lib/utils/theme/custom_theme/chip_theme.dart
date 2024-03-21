import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SChipTheme {
  SChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: SColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: SColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  ); // ChipThemeData
}
