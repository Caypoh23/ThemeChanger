// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/conf/values/strings_constants.dart';
import 'package:themechanger/theme/default/default_app_bar.dart';
import 'package:themechanger/theme/text/text24/text_24_medium.dart';
import 'package:themechanger/utils/shared_preference_helper.dart';

class ThemeScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final status =
        MySPHelper.isLightTheme! ? MyStrings.helloWorld : MyStrings.byeWorld;

    return Scaffold(
      body: Center(
        child: MyText24m(
          status,
        ),
      ),
      appBar: MyAppBar(title: MyStrings.themeResult),
    );
  }
}
