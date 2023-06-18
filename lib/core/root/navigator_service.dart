// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:themechanger/conf/values/border_radius_constants.dart';
import 'package:themechanger/conf/values/color_constants.dart';

@singleton
class NavigatorService {
  //
  static final key = GlobalKey<NavigatorState>();
  NavigatorState get _currentState => key.currentState!;
  BuildContext get _context => _currentState.context;

  //

  void clearFocus() {
    FocusScope.of(_context).requestFocus(FocusNode());
  }

  Future pushNamed(String routeName, {Object? arguments}) {
    return _currentState.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return _currentState.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    final predicate = ModalRoute.withName(routeName);
    return _currentState.pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  //

  Future<bool> pop([result]) {
    return _currentState.maybePop(result);
  }

  void popUntil(String routeName) {
    final predicate = ModalRoute.withName(routeName);
    _currentState.popUntil(predicate);
  }

  bool canPop([result]) {
    return _currentState.canPop();
  }

  //

  Future showMyModalBottomSheet(
    Widget child, {
    bool isScrollable = false,
  }) {
    return showModalBottomSheet(
      context: _context,
      builder: (_) => child,
      isScrollControlled: true,
      shape: isScrollable ? MyBorderRadius.popUpRounded : null,
      backgroundColor: isScrollable ? MyColors.white : MyColors.transparent,
    );
  }

  //

  void addPostFrameCallback(Function callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) => callback());
  }

  void addPostFrameCallbackW(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) => callback());
  }
}
