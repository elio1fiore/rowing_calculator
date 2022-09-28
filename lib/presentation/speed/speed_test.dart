import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SpeedTestPage extends StatelessWidget {
  const SpeedTestPage({super.key});

  // final geolocator = Geolocator.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
