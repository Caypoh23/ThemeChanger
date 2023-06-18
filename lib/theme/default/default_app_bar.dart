// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/conf/enums/theme_colors_enum.dart';
import 'package:themechanger/theme/text/text16/text_16_medium.dart';
import 'package:themechanger/utils/media_helper.dart';
import 'package:themechanger/utils/shared_preference_helper.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final String title;

  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: MyText16m(
        title,
        color:
            MySPHelper.isLightTheme! ? MyThemeColor.black : MyThemeColor.white,
      ),
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
