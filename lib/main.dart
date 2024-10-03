import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_space/core/routes/app_route.dart';
import 'package:x_space/core/services/shared_prefrences/shared_pref.dart';
import 'package:x_space/x_space_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (_) => runApp(
      XSpaceApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
