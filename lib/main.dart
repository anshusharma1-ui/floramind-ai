import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const FloraMindApp());
}

class FloraMindApp extends StatelessWidget {
  const FloraMindApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FloraMind AI',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}