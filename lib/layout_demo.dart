import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = ["Avatar", "Inception", "Interstellar", "Joker"];

    return Scaffold(
      appBar: AppBar(title: const Text("Exercise 3 - Layout")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Now Playing",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            // ListView inside Column → cần Expanded
            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(movies[index][0]),
                      ),
                      title: Text(movies[index]),
                      subtitle: const Text("Sample description"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}