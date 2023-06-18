// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:themechanger/conf/values/theme_constants.dart';
import 'package:themechanger/feature/switcher_screen/mobx/store.dart';
import 'conf/values/strings_constants.dart';
import 'conf/values/system_ui_overlay_style_constants.dart';
import 'core/navigator/route_generator.dart';
import 'core/navigator/routes_constants.dart';
import 'core/root/navigator_service.dart';
import 'utils/media_helper.dart';
import 'utils/my_scroll_behavior.dart';

class MyApp extends StatefulWidget {
  //
  static MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>();

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  //
  final store = SwitcherStore();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  void rebuildAllChildren() {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => store,
      child: Consumer<SwitcherStore>(
        builder: (_, SwitcherStore value, __) {
          return Observer(builder: (_) {
            final themeMode = value.themeMode;

            return AnnotatedRegion<SystemUiOverlayStyle>(
              value: value.isLightTheme
                  ? MySystemUiOverlayStyle.lightNavBar
                  : MySystemUiOverlayStyle.darkNavBar,
              child: MaterialApp(
                themeMode: themeMode,
                theme: MyThemes.lightTheme,
                darkTheme: MyThemes.darkTheme,
                //
                builder: builder,
                debugShowCheckedModeBanner: false,
                initialRoute: MyRoutes.switcherScreen,
                onGenerateTitle: (_) => MyStrings.appName,
                //
                navigatorKey: NavigatorService.key,
                navigatorObservers: <NavigatorObserver>[],
                onGenerateRoute: RouteGenerator.generateRoute,
              ),
            );
          });
        },
      ),
    );
  }

  Widget builder(context, child) {
    MediaHelper.init(context);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Builder(
        builder: (_) => ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: child,
        ),
      ),
    );
  }
}
