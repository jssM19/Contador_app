import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contador/models/contador_model.dart';

class HistorialPage extends StatelessWidget {
  const HistorialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Historial'),
      ),
    );
  }
}
