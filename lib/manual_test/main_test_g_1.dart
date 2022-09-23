import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _selected = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Row(
          children: [
            FilterChip(
              autofocus: false,
              selected: _selected,
              label: Text('ok fffkssksksk'),
              onSelected: ((value) {
                setState(() {
                  _selected = !_selected;
                });
              }),
              backgroundColor: Colors.grey,
              checkmarkColor: Colors.green,
              disabledColor: Colors.blue,
              elevation: 3,
              labelPadding: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(2.0),
              selectedColor: Colors.deepPurpleAccent,
              selectedShadowColor: Colors.lime,
              visualDensity: VisualDensity.comfortable,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
