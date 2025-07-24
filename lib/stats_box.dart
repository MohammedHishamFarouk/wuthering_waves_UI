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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              fixedSize: const Size(402, 34),
            ),
            child: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }

  List<Widget> stats() {
    final List<Widget> stats = [];
    for (int i = 0; i < 6; i++) {
      stats.add(const Stat());
    }
    return stats;
  }
}

class Stat extends StatelessWidget {
  const Stat({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('HP'), Text('1563')],
      ),
    );
  }
}
