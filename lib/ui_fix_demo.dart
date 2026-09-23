import 'package:flutter/material.dart';

class UIFixDemo extends StatefulWidget {
  const UIFixDemo({super.key});

  @override
  State<UIFixDemo> createState() => _UIFixDemoState();
}

class _UIFixDemoState extends State<UIFixDemo> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final items = ["Movie A", "Movie B", "Movie C", "Movie D"];

    return Scaffold(
      appBar: AppBar(title: const Text("Exercise 5 - UI Fix")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("Counter: $counter"),
          ),

          // Fix overflow bằng Expanded
          Expanded(
            child: ListView(
              children: items.map((e) => ListTile(title: Text(e))).toList(),
            ),
          ),
        ],
      ),
    );
  }
}