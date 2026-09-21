import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State<InputControlsDemo> {
  double sliderValue = 5;
  bool isActive = false;
  String selectedGenre = "Action";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 2 - Input Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("Rating"),

            Slider(
              value: sliderValue,
              min: 0,
              max: 10,
              divisions: 10,
              label: sliderValue.toString(),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),

            Text("Current: $sliderValue"),

            const SizedBox(height: 20),

            SwitchListTile(
              title: const Text("Active"),
              value: isActive,
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
              },
            ),

            const SizedBox(height: 20),

            const Text("Genre"),

            RadioListTile(
              title: const Text("Action"),
              value: "Action",
              groupValue: selectedGenre,
              onChanged: (value) {
                setState(() {
                  selectedGenre = value!;
                });
              },
            ),

            RadioListTile(
              title: const Text("Comedy"),
              value: "Comedy",
              groupValue: selectedGenre,
              onChanged: (value) {
                setState(() {
                  selectedGenre = value!;
                });
              },
            ),

            Text("Selected: $selectedGenre"),
          ],
        ),
      ),
    );
  }
}