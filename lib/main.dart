import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/contador_model.dart';
import 'screens/contador_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ContadorModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador con Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ContadorPage(),
    );
  }
}

// ContadorPage(),
