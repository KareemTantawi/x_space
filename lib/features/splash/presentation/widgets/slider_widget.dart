import 'package:flutter/material.dart';

class sliderWidget extends StatelessWidget {
  const sliderWidget({super.key, required this.animate});
  final Animation<Offset> animate;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animate,
      builder: (context, _) {
        return SlideTransition(
          position: animate,
          child: const Text(
            'Lets Start !',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
