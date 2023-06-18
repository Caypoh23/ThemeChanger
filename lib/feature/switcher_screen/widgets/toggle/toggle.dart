// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:themechanger/feature/switcher_screen/mobx/store.dart';
import 'package:themechanger/theme/default/default_cupertino_toggle.dart';

class SwitcherToggle extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<SwitcherStore>();

    return Observer(builder: (_) {
      return MyCupertinoToggle(
        onChanged: store.setIsLight,
        isActive: store.isLightTheme,
      );
    });
  }
}
