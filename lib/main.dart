import 'package:flutter/material.dart';
import 'package:wuthering_waves_ui_clone/screens/character_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const CharacterViewScreen(),
    );
  }
}
