// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'color_constants.dart';
import 'font_constants.dart';

class MyThemes {
  //
  static final lightTheme = ThemeData(
    fontFamily: MyFonts.main,
    primaryColor: MyColors.primary,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: MyColors.black,
      ),
      titleTextStyle: TextStyle(
        color: MyColors.black,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: MyColors.white,
      secondary: MyColors.neutral,
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: MyFonts.main,
    primaryColor: MyColors.primary,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: MyColors.white,
      ),
      titleTextStyle: TextStyle(
        color: MyColors.white,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: MyColors.black,
      secondary: MyColors.neutralVarient,
    ),
  );
}
