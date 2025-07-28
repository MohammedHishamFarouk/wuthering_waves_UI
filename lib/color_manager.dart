import 'package:flutter/material.dart';

class ColorManager {
  static LinearGradient yellowGradient = LinearGradient(
    colors: [
      const Color(0xffA99537),
      const Color(0xff676351),
      Colors.black.withValues(alpha: 0),
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );
}
