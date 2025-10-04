import 'package:flutter/material.dart';
import 'pages/home_page.dart';
// import 'theme.dart'; // Commented out untuk testing
import 'theme_simple.dart' as simple;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renada Stationary',
      debugShowCheckedModeBanner: false,
      theme: simple.AppTheme.lightTheme, // Gunakan simple theme untuk web
      home: const HomePage(),
    );
  }
}
