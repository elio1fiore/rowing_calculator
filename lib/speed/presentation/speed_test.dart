import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:row_calculator/speed/provider/speed_provider.dart';

class SpeedTestPage extends ConsumerWidget {
  const SpeedTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(speedProvider);
    final noty = ref.read(speedProvider.notifier);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            state.maybeWhen(
              orElse: () => Container(),
              dataPosition: (position) => Column(
                children: [
                  const Text('Speed'),
                  Text(position.speed.toString()),
                  const Text('Speed Accuracy'),
                  Text(position.speedAccuracy.toString()),
                ],
              ),
              error: (error) => Text(error),
              noSpeed: () => const Text('Premi per ottenere la velocità'),
              progressSpeed: () => const CircularProgressIndicator(),
            ),
            ElevatedButton(
              child: Text('get Pos'),
              onPressed: () {
                noty.determinePosition();
              },
            )
          ],
        ),
      ),
    ));
  }
}
