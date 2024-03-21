import 'package:ShopSphere/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:ShopSphere/utils/theme/custom_theme/text_field_theme.dart';
import 'package:flutter/material.dart';

import 'custom_theme/appbar_theme.dart';
import 'custom_theme/bottomsheet_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/chip_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/text_theme.dart';

class SAppTheme {
  SAppTheme._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: STextTheme.lightTextTheme,
    chipTheme: SChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: SAppBarTheme.lightAppBarTheme,
    checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme,
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: STextTheme.darkTextTheme,
    chipTheme: SChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: SAppBarTheme.darkAppBarTheme,
    checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme,
  );
}
