import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_space/core/styles/images/app_image.dart';

class WelcomeImageWidget extends StatelessWidget {
  const WelcomeImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        image: const DecorationImage(
          image: AssetImage(AppImages.homeImage),
        ),
      ),
    );
  }
}
