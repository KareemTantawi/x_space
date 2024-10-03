import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_space/core/styles/images/app_image.dart';
import 'package:x_space/core/utils/spacing.dart';
import 'package:x_space/features/splash/presentation/widgets/slider_widget.dart';

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
    return SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Center(
            child: Image.asset(
              AppImages.splash,
              height: 220.h,
            ),
          ),
          // verticalSpace(80),
          const Spacer(
            flex: 4,
          ),
          SliderWidget(
            animate: animate,
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
