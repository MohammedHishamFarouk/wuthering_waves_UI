import 'package:flutter/material.dart';

import 'components/stats_box.dart';

class CharacterStats extends StatelessWidget {
  const CharacterStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const StatsBox(),
        const Spacer(),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: Colors.white,
            maximumSize: const Size(402, 58),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.zero,
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/left.png')),
              Spacer(),
              Text(
                'Level Up',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 2),
              Image(image: AssetImage('assets/right.png')),
            ],
          ),
        ),
      ],
    );
  }
}
