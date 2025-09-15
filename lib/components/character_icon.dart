import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CharacterIcon extends StatelessWidget {
  final String asset;

  const CharacterIcon({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    const double size = 80;
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(painter: IconBorder(), size: const Size(size, size)),
        Container(
          height: size - 10,
          width: size - 10,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Image(image: AssetImage(asset), fit: BoxFit.cover),
        ),
      ],
    );
  }
}
// radius: i == 0 ? 42 : 38,

class IconBorder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint gradientPaint = Paint();
    final Paint normalPaint = Paint();
    normalPaint.color = const Color(0xFFA99537).withValues(alpha: 0.3);
    gradientPaint.shader = ui.Gradient.linear(
      Offset.zero,
      Offset(size.width, size.height),
      [Colors.transparent, const Color(0xFFB1AB7A), const Color(0xFFCCA40F)],
      [0, 0.5, 1],
    );
    final outRect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );
    final inRect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width - 5,
      height: size.height - 5,
    );
    canvas.drawDRRect(
      RRect.fromRectAndRadius(outRect, const Radius.circular(40)),
      RRect.fromRectAndRadius(inRect, const Radius.circular(40)),
      gradientPaint,
    );
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      (size.width / 2) - 5,
      normalPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
