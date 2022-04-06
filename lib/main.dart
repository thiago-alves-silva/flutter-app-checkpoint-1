import 'package:checkpoint_1/src/modules/intro_page/intro_page.dart';
import 'package:checkpoint_1/src/theme/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkpoint 1 - Widgets e construção de tela',
      theme: light,
      darkTheme: dark,
      themeMode: ThemeMode.light,
      home: const IntroPage(),
    );
  }
}
