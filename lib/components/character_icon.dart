import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CharacterIcon extends StatelessWidget {
  final int i;

  const CharacterIcon({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(painter: IconBorder(), size: const Size(80, 80)),
        Container(
          height: 70,
          width: 70,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Image(
            image: AssetImage('assets/icons/ch_icons/ch${i + 1}.webp'),
            fit: BoxFit.cover,
          ),
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
      width: 80,
      height: 80,
    );
    final inRect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: 75,
      height: 75,
    );
    canvas.drawDRRect(
      RRect.fromRectAndRadius(outRect, const Radius.circular(40)),
      RRect.fromRectAndRadius(inRect, const Radius.circular(40)),
      gradientPaint,
    );
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 35, normalPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
