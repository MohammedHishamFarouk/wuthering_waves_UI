import 'package:flutter/material.dart';
import 'package:wuthering_waves_ui_clone/view/screens/character_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(Colors.transparent),
        ),
      ),
      home: const CharacterViewScreen(),
    );
  }
}
