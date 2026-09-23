import 'package:flutter/material.dart';
import 'core_widgets_demo.dart';
import 'input_controls_demo.dart';
import 'layout_demo.dart';
import 'app_structure_demo.dart';
import 'ui_fix_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 4',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lab 4 Menu")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Exercise 1"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CoreWidgetsDemo(),
                ),
              );
            },
          ),

          ListTile(
            title: const Text("Exercise 2"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const InputControlsDemo(),
                ),
              );
            },
          ),

          ListTile(
            title: const Text("Exercise 3"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LayoutDemo(),
                ),
              );
            },
          ),

          ListTile(
            title: const Text("Exercise 4"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AppStructureDemo(),
                ),
              );
            },
          ),

          ListTile(
            title: const Text("Exercise 5"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const UIFixDemo(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}