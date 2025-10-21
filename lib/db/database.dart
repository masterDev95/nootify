import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class Reminders extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get message => text()();
  IntColumn get frequency => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Reminders])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Définition de l'emplacement de la base (dossier application)
  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'reminder_db',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
