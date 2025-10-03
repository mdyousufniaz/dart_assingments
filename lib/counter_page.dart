import 'package:flutter/material.dart';

/// This class shows Counter contents by rendering a [_CounterPageState].
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

/// Handles the counting logic.
class _CounterPageState extends State<CounterPage> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    final isNonZero = _counter != 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(color: Colors.white)
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 100),
            ),
            /// A row containing three buttons labeled by their `tooltip`
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove, size: 40),
                  onPressed: isNonZero ? () => setState(() => _counter--) : null, /// decrements counter when count nonzero, else disabled.
                  color: Colors.redAccent,
                  tooltip: "Decrement Button",
                ),
                IconButton(
                  icon: const Icon(Icons.restore, size: 40),
                  onPressed: isNonZero ? () => setState(() => _counter = 0) : null, /// resets counter when count nonzero, else disabled.
                  color: Colors.blueGrey,
                  tooltip: "Reset Button",
                ),
                IconButton(
                  icon: const Icon(Icons.add, size: 40),
                  onPressed: () => setState(() => _counter++),
                  color: Colors.greenAccent,
                  tooltip: "Increment Button",
                ),
              ],
            )
          ]
        )
      )
    );
  }
}