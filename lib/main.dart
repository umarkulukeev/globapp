import 'package:flutter/material.dart';
import './screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlobeApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingsScreen(),
    );
  }
}
