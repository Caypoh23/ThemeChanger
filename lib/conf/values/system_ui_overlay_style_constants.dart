// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'color_constants.dart';

class MySystemUiOverlayStyle {
  //
  static const lightNavBar = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarIconBrightness: Brightness.light,
    //
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.white,
    systemNavigationBarDividerColor: MyColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static const darkNavBar = SystemUiOverlayStyle(
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: MyColors.black,
    systemNavigationBarDividerColor: MyColors.black,
  );
}
