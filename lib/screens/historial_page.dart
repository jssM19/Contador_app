import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contador/models/contador_model.dart';

class HistorialPage extends StatelessWidget {
  const HistorialPage({super.key});
  @override
  Widget build(BuildContext context) {
    final contadorModel = context.watch<ContadorModel>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Historial'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HistorialPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(flex: 2),
            Text(
              '${contadorModel.contador}',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: contadorModel.color,
                fontSize: 80,
              ),
            ),
            TextButton(
              onPressed: () => context.read<ContadorModel>().reiniciar(),
              child: Text('Reiniciar desde aquí'),
            ),
            Text('Este es el mismo contador de la pantalla anterior'),
          ],
        ),
      ),
    );
  }
}
