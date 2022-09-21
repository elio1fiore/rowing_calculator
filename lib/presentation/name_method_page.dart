import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameMethodPage extends ConsumerWidget {
  const NameMethodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prova"),
      ),
      body: Container(
        child: Text('Ciao'),
      ),
    );
  }
}
