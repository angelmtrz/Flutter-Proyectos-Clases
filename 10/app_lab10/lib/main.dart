import 'package:flutter/material.dart';
/* import './helpers/shared_preferences_helper.dart';
import './shared_preferences_app.dart'; */
//import './flutter_secure_storage_app.dart';
/* import './hive_books_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './models/book.dart'; */
import './sqlite_app.dart';

/* void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  runApp(const ThemeSwitcherApp());
} */

/* void main() {
  runApp(const SecureStorageApp());
} */

/* void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookAdapter());
  await Hive.openBox<Book>('books');
  runApp(const HiveBooksApp());
} */

void main() {
  runApp(const SqliteApp());
}
