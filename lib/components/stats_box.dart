import 'package:flutter/material.dart';
import 'package:wuthering_waves_ui_clone/assets.dart';

class StatsBox extends StatelessWidget {
  const StatsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 266,
      width: 402,
      child: Column(
        children: [
          ...stats(),
          const SizedBox(height: 8),
          const MoreInfoButton(),
        ],
      ),
    );
  }

  List<Widget> stats() {
    const List<String> statAmounts = [
      '15844',
      '1916',
      '1158',
      '128.8%',
      '63.4%',
      '205.2%',
    ];
    final List<Widget> stats = [];
    for (int i = 0; i < Assets.statNames.length; i++) {
      stats.add(
        Stat(
          statName: Assets.statNames[i],
          statAmount: statAmounts[i],
          statIcon: Assets.statIcons[i],
        ),
      );
    }
    return stats;
  }
}

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
        backgroundColor: Colors.transparent,
        overlayColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Colors.white12),
        ),
        fixedSize: const Size(398, 32),
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.more_horiz, color: Colors.white, size: 24),
      ),
    );
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
    return Container(
      height: 32,
      width: statTypeCheck() ? 402 : 386,
      padding: statTypeCheck()
          ? const EdgeInsets.symmetric(horizontal: 8)
          : null,
      decoration: BoxDecoration(
        color: statTypeCheck() ? Colors.white12 : null,
        borderRadius: BorderRadius.circular(16),
      ),
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

  bool statTypeCheck() =>
      statName == 'HP' || statName == 'DEF' || statName == 'Crit. Rate';
}
