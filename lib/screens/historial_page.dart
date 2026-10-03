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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${contadorModel.contador}',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: contadorModel.color,
                fontSize: 80,
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () => context.read<ContadorModel>().reiniciar(),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // color del texto
                backgroundColor: Colors.blue,
              ),
              child: Text('Reiniciar desde aquí'),
            ),
            const SizedBox(height: 24),
            Text('Este es el mismo contador de la pantalla anterior'),
          ],
        ),
      ),
    );
  }
}
