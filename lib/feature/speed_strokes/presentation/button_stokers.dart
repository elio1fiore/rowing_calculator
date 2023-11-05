import 'package:flutter/material.dart';

class ButtonStokers extends StatefulWidget {
  const ButtonStokers({super.key});

  @override
  State<ButtonStokers> createState() => _ButtonStokersState();
}

class _ButtonStokersState extends State<ButtonStokers> {
  bool isRunning = false;
  double count = 0;

  void _togglePrinting() {
    setState(() {
      isRunning = !isRunning;
    });
    if (isRunning) {
      count = 0;
      _incrementCounter();
    }
  }

  void _incrementCounter() async {
    final dt = DateTime.now();

    while (isRunning) {
      final dt2 = DateTime.now();
      Duration? difference = dt2.difference(dt);
      double frq = (60000000 / difference.inMicroseconds) * 2;
      await Future.delayed(const Duration(milliseconds: 150));
      if (!isRunning) break;
      if (frq.isInfinite) {
        setState(() {
          count = 700;
        });
      } else {
        setState(() {
          count = frq;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _togglePrinting,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isRunning ? 'Ferma' : 'Avvia',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            (count - 1).toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text('2 x stokers')
        ],
      ),
    );
  }
}
