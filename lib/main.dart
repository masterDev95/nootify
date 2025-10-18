import 'package:flutter/material.dart';
import 'package:nootify/screens/home_screen.dart';
import 'package:nootify/theme.dart';

void main() {
  runApp(const NootifyApp());
}

class NootifyApp extends StatefulWidget {
  const NootifyApp({super.key});

  @override
  State<NootifyApp> createState() => _NootifyAppState();
}

class _NootifyAppState extends State<NootifyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void toggleTheme(BuildContext context) {
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    setState(() {
      switch (_themeMode) {
        case ThemeMode.dark:
          _themeMode = ThemeMode.light;
          break;
        case ThemeMode.light:
          _themeMode = ThemeMode.dark;
          break;
        default:
          _themeMode = isDark ? ThemeMode.light : ThemeMode.dark;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nootify',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: HomeScreen(onToggleTheme: () => toggleTheme(context)),
    );
  }
}
