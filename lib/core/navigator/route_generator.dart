// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/feature/error/error_screen.dart';
import 'package:themechanger/feature/switcher_screen/switcher_screen.dart';
import 'package:themechanger/feature/theme_screen/theme_screen.dart';
import 'routes_constants.dart';

class RouteGenerator {
  //
  static Route route(
    String? name,
    Widget widget, {
    bool isFade = false,
    bool isSlide = false,
    bool opaque = true,
  }) {
    if (isFade)
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation = CurvedAnimation(curve: Curves.ease, parent: animation);
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
    else if (isSlide)
      return PageRouteBuilder(
        opaque: opaque,
        settings: RouteSettings(name: name),
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return new SlideTransition(
            position: new Tween<Offset>(
              begin: Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      );
    else
      return MaterialPageRoute(
        builder: (_) => widget,
        settings: RouteSettings(name: name),
      );
  }

  //

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRoutes.switcherScreen:
        return route(
          settings.name,
          SwitcherScreen(),
        );

      case MyRoutes.themeScreen:
        return route(
          settings.name,
          ThemeScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => ErrorScreen());
  }
}
