import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_space/core/styles/images/app_image.dart';
import 'package:x_space/core/utils/spacing.dart';
import 'package:x_space/features/home/presentation/widgets/home_text_widget.dart';
import 'package:x_space/features/home/presentation/widgets/planet_card_widget.dart';
import 'package:x_space/features/home/presentation/widgets/text_feild_widget.dart';
import 'package:x_space/features/home/presentation/widgets/welcome_image_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              const TextFeildWidget(),
              verticalSpace(12),
              const WelcomeImageWidget(),
              verticalSpace(12),
              const HomeTextWidget(),
              verticalSpace(12),
              Expanded(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return PlanetCard(
                      onTap: () {},
                      colors: [
                        Colors.black.withOpacity(0.9),
                        const Color(0xff139CA6),
                      ],
                      image: AppImages.saturn,
                      title: 'Saturn',
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
