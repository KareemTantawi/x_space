import 'package:flutter/material.dart';
import 'package:x_space/core/styles/fonts/font_weight_helper.dart';

class HomeTextWidget extends StatelessWidget {
  const HomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Planets',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        Text(
          'Name of planets',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
