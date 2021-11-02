import 'package:iot/models/window.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    //alguma_coisa.db é o nome do banco, mudado para fins de teste
    final String path = join(dbPath, 'smartWindow.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE windows('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'status TEXT'
          'channel TEXT)');
    }, version: 1);
  });
}

Future<int> save(Window window) {
  return createDatabase().then((db) {
    final Map<String, dynamic> windowMap = Map();
    windowMap['name'] = window.name;
    windowMap['channel'] = window.channel;
    windowMap['status'] = window.status;

    return db.insert('contacts', windowMap);
  });
}

Future<List<Window>> findAll() {
  return createDatabase().then((db) {
    return db.query('windows').then((maps) {
      final List<Window> windows = [];
      for (Map<String, dynamic> map in maps) {
        final Window window =
            Window(map['id'], map['name'], map['channel'], map['status']);
        windows.add(window);
      }
      return windows;
    });
  });
}
