import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CharacterIcon extends StatelessWidget {
  final int i;

  const CharacterIcon({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 80,
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

        CustomPaint(painter: IconBorder(), size: const Size(80, 80)),
      ],
    );
  }
}
// radius: i == 0 ? 42 : 38,
// backgroundImage: AssetImage('assets/icons/ch_icons/ch${i + 1}.webp'),

class IconBorder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint1 = Paint();
    final Paint paint2 = Paint();
    paint2.color = Colors.red;
    paint1.shader = ui.Gradient.linear(
      Offset.zero,
      Offset(size.width, size.height),
      [Colors.black.withOpacity(0), Colors.yellow],
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
      paint1,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
