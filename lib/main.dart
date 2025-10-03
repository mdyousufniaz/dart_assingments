import 'package:flutter/material.dart';

import 'counter_page.dart' show CounterPage;

void main() {
  runApp(const CounterApp());
}

/// The core app of this project.
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: CounterPage()
    );
  }
}