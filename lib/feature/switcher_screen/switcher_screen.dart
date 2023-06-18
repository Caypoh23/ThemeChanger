// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/conf/values/strings_constants.dart';
import 'package:themechanger/theme/default/default_app_bar.dart';
import 'widgets/content.dart';

class SwitcherScreen extends StatefulWidget {
  @override
  _SwitcherScreenState createState() => _SwitcherScreenState();
}

class _SwitcherScreenState extends State<SwitcherScreen> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitcherContent(),
      appBar: MyAppBar(
        title: MyStrings.themeSwitcher,
        canPop: false,
      ),
    );
  }
}
