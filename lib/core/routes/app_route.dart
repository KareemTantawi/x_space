import './routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      // case Routes.login:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginScreen(),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No Routes defiend for ${setting.name}',
              ),
            ),
          ),
        );
    }
  }
}
