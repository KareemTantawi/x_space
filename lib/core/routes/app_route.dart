import 'package:x_space/features/home/presentation/screens/bottoma_nav_bar_screen.dart';
import 'package:x_space/features/home/presentation/screens/home_screen.dart';
import 'package:x_space/features/splash/presentation/splash_screen.dart';

import './routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.bottomNavBarScreen:
        return MaterialPageRoute(
          builder: (_) => const BottomNavBarScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

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
