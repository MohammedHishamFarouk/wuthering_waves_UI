import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wuthering_waves_ui_clone/assets.dart';
import 'package:wuthering_waves_ui_clone/view/components/character_icon.dart';
import 'package:wuthering_waves_ui_clone/view/components/statsSection/character_stats.dart';
import 'package:wuthering_waves_ui_clone/view/components/tabs.dart';

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
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Text('', style: TextStyle(fontSize: 18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 66, right: 70),
            child: Row(
              spacing: 5,
              children: [
                SvgPicture.asset(
                  Assets.svgTabIcons[0],
                  width: 36,
                  height: 36,
                  color: Colors.white70,
                ),
                const Text('Overview', style: TextStyle(fontSize: 20)),
                const Expanded(child: SizedBox()),
                const Image(image: AssetImage('assets/icons/exitIcon.png')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 46,
              right: 60,
              bottom: 64,
              top: 134,
            ),
            child: Row(
              children: [
                const Tabs(),
                const SizedBox(width: 20),
                const CharacterStats(),
                const Spacer(),
                const Column(),
                const Spacer(),
                SizedBox(
                  width: 80,
                  child: Column(
                    spacing: 35,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: charactersOwned().length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 13),
                          itemBuilder: (context, index) =>
                              charactersOwned()[index],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/showAllCharaIcon.svg',
                        height: 60,
                        width: 60,
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
    for (var asset in Assets.chIcons) {
      characters.add(CharacterIcon(asset: asset));
    }
    return characters;
  }
}
