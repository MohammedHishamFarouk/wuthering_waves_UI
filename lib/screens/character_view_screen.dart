import 'package:flutter/material.dart';
import 'package:wuthering_waves_ui_clone/character_stats.dart';
import 'package:wuthering_waves_ui_clone/components/character_icon.dart';

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
              left: 46,
              right: 60,
              bottom: 64,
              top: 40,
            ),
            child: Row(
              children: [
                const Column(),
                const CharacterStats(),
                const Spacer(),
                const Column(),
                const Spacer(),
                SizedBox(
                  width: 80,
                  child: Column(
                    spacing: 68,
                    children: [
                      const Image(
                        image: AssetImage('assets/icons/exitIcon.png'),
                      ),
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: charactersOwned().length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 18),
                          itemBuilder: (context, index) =>
                              charactersOwned()[index],
                        ),
                      ),
                    ],
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
