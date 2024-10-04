import 'package:flutter/material.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xff021983),
          ),
        ),
      ),
    );
  }
}
