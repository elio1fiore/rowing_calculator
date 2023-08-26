import 'dart:async';

import 'package:flutter/material.dart';

void main() async {
  final dt = DateTime.now();

  Future.delayed(
    Duration(seconds: 3),
    () {
      final newDt = DateTime.now();
      Duration difference = newDt.difference(dt);

      print(difference.inSeconds);
    },
  );
  runApp(MyApp());
}

class ButtonPressBloc {
  int _counter = 0;
  final _counterController = StreamController<int>();

  Stream<int> get counterStream => _counterController.stream;

  void incrementCounter() {
    _counter++;
    _counterController.sink.add(_counter);
  }

  void dispose() {
    _counterController.close();
  }
}

final buttonPressBloc = ButtonPressBloc();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Press Counter with Stream',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Press Counter with Stream'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder<int>(
              stream: buttonPressBloc.counterStream,
              initialData: 0,
              builder: (context, snapshot) {
                return Text(
                  'Numero di volte premuto: ${snapshot.data}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          buttonPressBloc.incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
