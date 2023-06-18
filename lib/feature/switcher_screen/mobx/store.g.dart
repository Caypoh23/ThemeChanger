// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SwitcherStore on _SwitcherStore, Store {
  late final _$isLightThemeAtom =
      Atom(name: '_SwitcherStore.isLightTheme', context: context);

  @override
  bool get isLightTheme {
    _$isLightThemeAtom.reportRead();
    return super.isLightTheme;
  }

  @override
  set isLightTheme(bool value) {
    _$isLightThemeAtom.reportWrite(value, super.isLightTheme, () {
      super.isLightTheme = value;
    });
  }

  late final _$switchHistoryAtom =
      Atom(name: '_SwitcherStore.switchHistory', context: context);

  @override
  List<String> get switchHistory {
    _$switchHistoryAtom.reportRead();
    return super.switchHistory;
  }

  @override
  set switchHistory(List<String> value) {
    _$switchHistoryAtom.reportWrite(value, super.switchHistory, () {
      super.switchHistory = value;
    });
  }

  late final _$themeModeAtom =
      Atom(name: '_SwitcherStore.themeMode', context: context);

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  late final _$_SwitcherStoreActionController =
      ActionController(name: '_SwitcherStore', context: context);

  @override
  void setIsLight(bool value) {
    final _$actionInfo = _$_SwitcherStoreActionController.startAction(
        name: '_SwitcherStore.setIsLight');
    try {
      return super.setIsLight(value);
    } finally {
      _$_SwitcherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSwitchHistory(List<String> value) {
    final _$actionInfo = _$_SwitcherStoreActionController.startAction(
        name: '_SwitcherStore.setSwitchHistory');
    try {
      return super.setSwitchHistory(value);
    } finally {
      _$_SwitcherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setThemeMode(ThemeMode value) {
    final _$actionInfo = _$_SwitcherStoreActionController.startAction(
        name: '_SwitcherStore.setThemeMode');
    try {
      return super.setThemeMode(value);
    } finally {
      _$_SwitcherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLightTheme: ${isLightTheme},
switchHistory: ${switchHistory},
themeMode: ${themeMode}
    ''';
  }
}
