import 'package:assignment_2/screens/main_tab_screen.dart';
import 'package:flutter/material.dart';

class CounterNavApp extends StatelessWidget {
  const CounterNavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Counter Navigation App',
      home: MainTabScreen(),
    );
  }
}
