// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/conf/values/edge_insets_constants.dart';
import 'package:themechanger/conf/values/strings_constants.dart';
import 'package:themechanger/core/navigator/routes_constants.dart';
import 'package:themechanger/core/root/injector.dart';
import 'package:themechanger/core/root/navigator_service.dart';
import 'package:themechanger/theme/default/default_button.dart';

class SwitcherOpenButton extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MyButton.primary(
      label: MyStrings.open,
      onTap: openTextScreen,
      margin: MyEdgeInsets.all16,
    );
  }

  void openTextScreen() {
    injector<NavigatorService>().pushNamed(MyRoutes.themeScreen);
  }
}
