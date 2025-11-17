import 'package:flutter/material.dart';

class CombatRoles extends StatelessWidget {
  const CombatRoles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 398,
      height: 70,
      child: Stack(
        children: [
          Container(color: Colors.white.withValues(alpha: 0.03)),
          Container(
            height: 20,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white10, Colors.transparent],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            margin: const EdgeInsets.only(top: 7),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Text('Combat Roles', style: TextStyle(fontSize: 20)),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 17,
                child: Icon(Icons.more_horiz_sharp, color: Colors.black),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: List.generate(
                2,
                (index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
