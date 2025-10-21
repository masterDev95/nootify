import 'package:flutter/material.dart';
import 'package:nootify/components/reminder_list.dart';
import 'package:nootify/theme.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;
  const HomeScreen({super.key, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsetsGeometry.only(right: 12),
                  child: SizedBox(
                    height: 32,
                    child: Image(
                      image: AssetImage("assets/image/penguin-icon.png"),
                    ),
                  ),
                ),
              ),
              TextSpan(
                text: "Nootify",
                style: TextStyle(color: AppTheme.primaryColor),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: onToggleTheme,
            icon: Icon(isDark ? Icons.wb_sunny : Icons.nightlight_round),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...introSection(context),
              const SizedBox(height: 20),
              const ReminderList(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> introSection(BuildContext context) {
    return [
      SizedBox(
        height: 96,
        child: Image(image: AssetImage("assets/image/penguin-svgrepo-com.png")),
      ),
      Text.rich(
        style: Theme.of(context).textTheme.headlineMedium,
        TextSpan(
          children: [
            TextSpan(text: "Bienvenue sur "),
            TextSpan(
              text: "Nootify",
              style: TextStyle(color: AppTheme.primaryColor),
            ),
          ],
        ),
      ),
      const SizedBox(height: 5),
      Text(
        "Noot Noot ! Prêt à organiser votre journée ?",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ];
  }
}
