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
