import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 1 - Core Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Welcome to Flutter UI",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            const Icon(Icons.movie, size: 50, color: Colors.blue),

            const SizedBox(height: 20),

            Image.network(
              "https://picsum.photos/400/200",
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            const Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text("Movie Item"),
                subtitle: Text("Sample ListTile inside Card"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}   