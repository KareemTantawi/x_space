import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PlanetCard extends StatelessWidget {
  PlanetCard({
    super.key,
    required this.title,
    required this.image,
    required this.colors,
    required this.onTap,
  });
  void Function() onTap;
  final String title;
  final String image;
  // Gradient gradient;
  List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          height: 110.h,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Image.asset(
                  image,
                  height: 100.h,
                  width: 100.h,
                ),
                const Spacer(
                  flex: 7,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // verticalSpace(4),
                // horizontalSpace(1),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
