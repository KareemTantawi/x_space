import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_space/core/styles/images/app_image.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key, required this.animate});
  final Animation<Offset> animate;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animate,
      builder: (context, _) {
        return SlideTransition(
          position: animate,
          child: Image.asset(
            AppImages.imageSplash,
            height: 60.h,
          ),
        );
      },
    );
  }
}
