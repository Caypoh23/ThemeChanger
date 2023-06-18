// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:mobx/mobx.dart';

// Project imports:
import 'package:themechanger/conf/values/strings_constants.dart';
import 'package:themechanger/utils/date_formatter.dart';
import 'package:themechanger/utils/shared_preference_helper.dart';

part 'store.g.dart';

class SwitcherStore extends _SwitcherStore with _$SwitcherStore {}

abstract class _SwitcherStore with Store {
  //

  @observable
  bool isLightTheme = MySPHelper.isLightTheme!;

  @observable
  List<String> switchHistory = [];

  //

  @observable
  ThemeMode themeMode =
      MySPHelper.isLightTheme! ? ThemeMode.light : ThemeMode.dark;

  //

  void logSwitchHistory() {
    final timestamp = MyDateFormatter.fddMMyyyyHHmmss(DateTime.now());
    final status = isLightTheme ? MyStrings.helloWorld : MyStrings.byeWorld;
    final logEntry = '$timestamp - $status';
    setSwitchHistory(List.of(switchHistory..add(logEntry)));
  }

  //

  @action
  void setIsLight(bool value) {
    isLightTheme = value;
    MySPHelper.isLightTheme = isLightTheme;

    setThemeMode(isLightTheme ? ThemeMode.light : ThemeMode.dark);

    logSwitchHistory();
  }

  @action
  void setSwitchHistory(List<String> value) => switchHistory = value;

  @action
  void setThemeMode(ThemeMode value) => themeMode = value;
}
