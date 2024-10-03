import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_space/core/routes/app_route.dart';
import 'package:x_space/core/routes/routes.dart';

// ignore: must_be_immutable
class XSpaceApp extends StatelessWidget {
  XSpaceApp({super.key, required this.appRouter});
  AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Scaffold(),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.splash,
      ),
    );
  }
}
