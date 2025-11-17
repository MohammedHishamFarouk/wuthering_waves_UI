import 'dart:math' as math;

import 'package:flutter/material.dart';

class AscensionLv extends StatelessWidget {
  const AscensionLv({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Transform.rotate(
            angle: -math.pi / 4,
            child: Container(
              width: 16,
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }
}
