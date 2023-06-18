// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/conf/assets/icon_constants.dart';
import 'package:themechanger/conf/values/color_constants.dart';
import 'package:themechanger/conf/values/edge_insets_constants.dart';
import 'package:themechanger/core/root/injector.dart';
import 'package:themechanger/core/root/navigator_service.dart';
import 'package:themechanger/theme/text/text18/text_18_semi_bold.dart';
import 'package:themechanger/utils/shared_preference_helper.dart';
import 'default_container.dart';
import 'default_gesture.dart';
import 'default_icon.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool canPop;
  final String title;
  final List<Widget>? actions;

  final void Function()? onTap;
  final void Function()? onPop;

  MyAppBar({
    required this.title,
    this.canPop = true,
    this.actions,
    this.onTap,
    this.onPop,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: AppBar(
        elevation: 0.0,
        actions: actions,
        leadingWidth: 40,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: canPop
            ? MyIcon(
                size: 24,
                icon: MyIcons.arrowLeft,
                padding: MyEdgeInsets.left16,
                onTap: onPop ?? injector<NavigatorService>().pop,
                color:
                    MySPHelper.isLightTheme! ? MyColors.black : MyColors.white,
              )
            : null,
        title: MyGestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText18s(
                title,
                isOverflow: true,
              ),
              if (onTap != null) ...[
                SizedBox(width: 8),
                MyIcon(
                  size: 16,
                  icon: MyIcons.arrowDown,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
