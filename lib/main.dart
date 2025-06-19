import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'views/item_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://tnmascrhawtifzvvyali.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRubWFzY3JoYXd0aWZ6dnZ5YWxpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg5MDI4MjAsImV4cCI6MjA2NDQ3ODgyMH0.0661Rqaen2HH7rBt1NRhBghN6COTZMg1WAuAGxMjlrk',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF6A1B9A);
    const accentColor = Color(0xFFAB47BC);
    const backgroundColor = Color(0xFF121212);
    const cardColor = Color(0xFF1E1E1E);

    return MaterialApp(
      title: 'App Supabase',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        appBarTheme: const AppBarTheme(elevation: 0),
        cardTheme: CardTheme(
          color: cardColor,
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: accentColor,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: cardColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          labelStyle: const TextStyle(color: Colors.white70),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: accentColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: const ItemListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
