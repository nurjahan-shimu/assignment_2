import 'package:assignment_2/screens/about_screen.dart';
import 'package:assignment_2/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    AboutScreen()
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this ,initialIndex: 0);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
      Widget build(BuildContext context) {
    return Scaffold(

      body:
      screens[selectedIndex],
      bottomNavigationBar:
      NavigationBar(
        selectedIndex: selectedIndex,
          onDestinationSelected: (int index){
          selectedIndex = index;
          setState(() {
          });
          },

          destinations: [
      NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.info), label: 'About')
          ]

      )

    );

  }

}

