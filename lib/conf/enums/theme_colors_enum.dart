// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/conf/values/color_constants.dart';

// Project imports:

enum MyThemeColor {
  primary,
  secondary,
  tertiary,
  //
  white,
  black,
  neutral,
  neutralVarient,
  //
  warning,
  error,
}

extension MyThemeColorExtension on MyThemeColor {
  //
  Color get color {
    switch (this) {
      case MyThemeColor.secondary:
        return MyColors.secondary;

      case MyThemeColor.tertiary:
        return MyColors.tertiary;

      case MyThemeColor.white:
        return MyColors.white;

      case MyThemeColor.black:
        return MyColors.black;

      case MyThemeColor.neutral:
        return MyColors.neutral;

      case MyThemeColor.neutralVarient:
        return MyColors.neutralVarient;

      case MyThemeColor.warning:
        return MyColors.warning;

      case MyThemeColor.error:
        return MyColors.error;

      default:
        return MyColors.primary;
    }
  }

  Color get disabledColor {
    switch (this) {
      case MyThemeColor.secondary:
        return MyColors.secondaryA50;

      case MyThemeColor.tertiary:
        return MyColors.tertiaryA50;

      case MyThemeColor.white:
        return MyColors.whiteA50;

      case MyThemeColor.black:
        return MyColors.blackA50;

      case MyThemeColor.neutral:
        return MyColors.neutralA50;

      case MyThemeColor.neutralVarient:
        return MyColors.neutralVarientA50;

      case MyThemeColor.warning:
        return MyColors.warningA50;

      case MyThemeColor.error:
        return MyColors.errorA50;

      default:
        return MyColors.primaryA50;
    }
  }
}
