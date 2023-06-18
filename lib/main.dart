// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'app.dart';
import 'core/root/injector.dart';
import 'utils/shared_preference_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await MySPHelper.init();

  configureDependencies();

  runApp(MyApp());
}
