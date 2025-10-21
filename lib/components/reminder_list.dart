import 'package:flutter/material.dart';
import 'package:nootify/db/database.dart';
import 'package:nootify/db/database_provider.dart';

class ReminderList extends StatefulWidget {
  const ReminderList({super.key});

  @override
  State<ReminderList> createState() => _ReminderListState();
}

class _ReminderListState extends State<ReminderList> {
  List<Reminder> reminders = [];

  @override
  void initState() {
    super.initState();
    DatabaseProvider.db
        .select(DatabaseProvider.db.reminders)
        .get()
        .then((rows) => setState(() => reminders = rows));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mes rappels",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text("0 actif sur 0 rappel"),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Nouveau Rappel"),
            ),
          ],
        ),
        SizedBox(height: 20),
        reminders.isEmpty ? noReminderCard(context) : noReminderCard(context),
      ],
    );
  }

  SizedBox noReminderCard(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image(image: AssetImage("assets/image/penguin-sleep.png")),
            ),
            SizedBox(height: 16),
            Text(
              "C'est si calme ici...",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Créez votre premier rappel pour commencer !"),
          ],
        ),
      ),
    );
  }
}
