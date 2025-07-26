import 'package:flutter/material.dart';

class StatsBox extends StatelessWidget {
  const StatsBox({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> fullStats = stats();
    return SizedBox(
      height: 266,
      width: 402,
      child: Column(
        children: [
          ...fullStats,
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: Colors.white12,
              overlayColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              fixedSize: const Size(402, 34),
            ),
            child: const Icon(Icons.more_horiz, color: Colors.white, size: 24),
          ),
        ],
      ),
    );
  }

  List<Widget> stats() {
    const List<String> statIcons = [
      'assets/icons/stats_icons/HP.png',
      'assets/icons/stats_icons/ATK.png',
      'assets/icons/stats_icons/DEF.png',
      'assets/icons/stats_icons/ER.png',
      'assets/icons/stats_icons/CR.png',
      'assets/icons/stats_icons/CD.png',
    ];
    const List<String> statNames = [
      'HP',
      'ATK',
      'DEF',
      'Energy Regen',
      'Crit. Rate',
      'Crit. DMG',
    ];
    const List<String> statAmounts = [
      '15844',
      '1916',
      '1158',
      '128.8%',
      '63.4%',
      '205.2%',
    ];
    final List<Widget> stats = [];
    for (int i = 0; i < 6; i++) {
      stats.add(
        Stat(
          statName: statNames[i],
          statAmount: statAmounts[i],
          statIcon: statIcons[i],
        ),
      );
    }
    return stats;
  }
}

class Stat extends StatelessWidget {
  final String statName;
  final String statAmount;
  final String statIcon;
  const Stat({
    super.key,
    required this.statName,
    required this.statAmount,
    required this.statIcon,
  });
  final double fontSize = 18;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        spacing: 4,
        children: [
          Image.asset(statIcon, height: 18, width: 18),
          Text(statName, style: TextStyle(fontSize: fontSize)),
          const Spacer(),
          Text(statAmount, style: TextStyle(fontSize: fontSize)),
        ],
      ),
    );
  }
}
