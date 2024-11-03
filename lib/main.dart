import 'package:flutter/material.dart';
import 'core/themes/app_theme.dart';
import './features/home/pages/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(), // Set RegisteriPage as the home screen
    );
  }
}

