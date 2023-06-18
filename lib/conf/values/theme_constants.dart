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
    colorScheme: ColorScheme.light(
      primary: MyColors.white,
      secondary: MyColors.neutral,
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: MyFonts.main,
    primaryColor: MyColors.primary,
    colorScheme: ColorScheme.dark(
      primary: MyColors.black,
      secondary: MyColors.neutralVarient,
    ),
  );
}
