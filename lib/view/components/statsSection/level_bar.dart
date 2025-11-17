import 'package:flutter/material.dart';

class LevelBar extends StatelessWidget {
  const LevelBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 402,
      height: 12,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.black38,
        border: Border.all(color: Colors.white24, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
