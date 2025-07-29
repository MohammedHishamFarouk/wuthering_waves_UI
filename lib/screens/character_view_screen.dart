import 'package:flutter/material.dart';
import 'package:wuthering_waves_ui_clone/components/character_icon.dart';
import 'package:wuthering_waves_ui_clone/components/stats_box.dart';

class CharacterViewScreen extends StatelessWidget {
  const CharacterViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60,
              right: 60,
              bottom: 64,
              top: 48,
            ),
            child: Row(
              children: [
                const Column(),
                Column(
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
                ),
                const Column(),
                const Spacer(),
                SizedBox(
                  width: 80,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 9,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 18),
                    itemBuilder: (context, index) => charactersOwned()[index],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> charactersOwned() {
    final List<Widget> characters = [];
    for (int i = 0; i < 9; i++) {
      characters.add(CharacterIcon(i: i));
    }
    return characters;
  }
}
