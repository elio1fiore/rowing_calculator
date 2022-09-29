import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TwoInputPage extends ConsumerStatefulWidget {
  const TwoInputPage({super.key});

  @override
  ConsumerState<TwoInputPage> createState() => _TwoInputPageState();
}

class _TwoInputPageState extends ConsumerState<TwoInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two Input'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ReactiveForm(),
        ),
      ),
    );
  }
}
