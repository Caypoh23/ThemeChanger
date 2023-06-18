// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:themechanger/conf/values/strings_constants.dart';
import 'package:themechanger/theme/default/default_app_bar.dart';
import 'mobx/store.dart';
import 'widgets/content.dart';

class SwitcherScreen extends StatefulWidget {
  @override
  _SwitcherScreenState createState() => _SwitcherScreenState();
}

class _SwitcherScreenState extends State<SwitcherScreen> {
  //
  final store = SwitcherStore();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => store,
      child: Scaffold(
        body: SwitcherContent(),
        appBar: MyAppBar(title: MyStrings.themeSwitcher),
      ),
    );
  }
}
