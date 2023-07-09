import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ContaColpi(),
      ),
    );
  }
}

class ContaColpi extends StatefulWidget {
  @override
  _ContaColpiState createState() => _ContaColpiState();
}

class _ContaColpiState extends State<ContaColpi> {
  int _conteggio = 0;
  DateTime _inizio = DateTime.now();

  void _incrementaConteggio() {
    setState(() {
      _conteggio++;
    });
  }

  int _calcolaColpiAlMinuto() {
    Duration tempoTrascorso = DateTime.now().difference(_inizio);
    double minutiTrascorsi = tempoTrascorso.inMilliseconds / 60000;
    return (_conteggio / minutiTrascorsi).round();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Colpi al minuto: ${_calcolaColpiAlMinuto()}',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: _incrementaConteggio,
            child: Text('Premi qui'),
          ),
        ],
      ),
    );
  }
}
