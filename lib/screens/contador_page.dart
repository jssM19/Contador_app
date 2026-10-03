import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contador/models/contador_model.dart';
import 'package:contador/screens/historial_page.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 👀 watch: me redibujo cuando cambie
    final contadorModel = context.watch<ContadorModel>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Contador con Provider'),
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
            const Text('Has presionado el botón esta cantidad de veces:'),
            Text(
              '${contadorModel.contador}',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: contadorModel.color,
                fontSize: 80,
              ),
            ),
            const Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: () =>
                        context.read<ContadorModel>().decrementar(),
                    tooltip: 'Restar',
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: () => context.read<ContadorModel>().reiniciar(),
                    tooltip: 'Reiniciar',
                    child: const Icon(Icons.refresh),
                  ),
                  FloatingActionButton(
                    onPressed: () =>
                        context.read<ContadorModel>().incrementar(),
                    tooltip: 'Sumar',
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
