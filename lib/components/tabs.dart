import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wuthering_waves_ui_clone/assets.dart';
import 'package:wuthering_waves_ui_clone/color_manager.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: tabs(),
    );
  }

  List<Widget> tabs() {
    List<Widget> tabs = List.generate(Assets.svgTabIcons.length, (index) {
      return Tab(index: index, isSelected: index == 0);
    });
    return tabs;
  }
}

class Tab extends StatelessWidget {
  final int index;
  final bool isSelected;
  const Tab({super.key, required this.index, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 56,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 76, child: SvgPicture.asset(Assets.svgTabIcons[index])),
        Container(
          width: 3,
          height: 135,
          color: isSelected ? ColorManager.yellowOrange : Colors.transparent,
        ),
      ],
    );
  }
}
