import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wuthering_waves_ui_clone/view/components/statsSection/ascenion_lv.dart';
import 'package:wuthering_waves_ui_clone/view/components/statsSection/combat_roles.dart';
import 'package:wuthering_waves_ui_clone/view/components/statsSection/level_bar.dart';
import 'package:wuthering_waves_ui_clone/view/components/statsSection/stats_box.dart';

class CharacterStats extends StatelessWidget {
  const CharacterStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/element_frame.png',
                  height: 80,
                  width: 80,
                  color: Colors.white12,
                ),
                Image.asset('assets/Havoc.png', height: 60, width: 60),
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                  child: Container(
                    height: 30,
                    width: 30,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
            RichText(
              text: const TextSpan(
                text: 'Phrolova',
                style: TextStyle(fontSize: 20, color: Colors.white),
                children: [
                  TextSpan(
                    text: '\nHavoc',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff9C986E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const AscensionLv(),
        RichText(
          text: const TextSpan(
            text: 'Lv. 89/',
            style: TextStyle(fontSize: 18, color: Colors.white),
            children: [
              TextSpan(
                text: '90',
                style: TextStyle(fontSize: 18, color: Colors.white30),
              ),
            ],
          ),
        ),
        const LevelBar(),
        const SizedBox(height: 18),
        const StatsBox(),
        const CombatRoles(),
        const Spacer(),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: Colors.white,
            maximumSize: const Size(402, 58),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
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
                  color: Colors.black,
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
