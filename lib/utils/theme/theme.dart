import 'package:demo_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:demo_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:demo_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:demo_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:demo_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:demo_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:demo_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:demo_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class DemoAppTheme{
  DemoAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: DemoTextTheme.lightTextTheme,
    chipTheme: DemoChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: DemoAppBarTheme.lightAppBarTheme,
    checkboxTheme: DemoCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: DemoBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: DemoElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: DemoOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: DemoTextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: DemoTextTheme.darkTextTheme,
    chipTheme: DemoChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: DemoAppBarTheme.darkAppBarTheme,
    checkboxTheme: DemoCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: DemoBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: DemoElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: DemoOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: DemoTextFormFieldTheme.darkInputDecorationTheme,
  );

}
