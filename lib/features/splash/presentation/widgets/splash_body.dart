import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animate;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animate = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(controller);
    controller.forward();

    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.pushNamed(context, Routes.onBoardingScreen);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
