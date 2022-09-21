import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Prova"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: const [
                  Text('name measures'),
                  Text('resultes'),
                ],
              ),
            );
          },
        ));
  }
}
