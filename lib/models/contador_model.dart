import 'package:flutter/material.dart';

class ContadorModel extends ChangeNotifier {
  int _contador = 0;

  // Getter para leer el valor desde afuera
  int get contador => _contador;

  // Getter para el color (así la lógica vive en el modelo, no en la UI)
  Color get color {
    if (_contador < 0) return Colors.red;
    if (_contador > 0) return Colors.green;
    return Colors.black;
  }

  void incrementar() {
    _contador++;
    notifyListeners(); // 🔔 avisa a todos los que escuchan
  }

  void decrementar() {
    _contador--;
    notifyListeners();
  }

  void reiniciar() {
    _contador = 0;
    notifyListeners();
  }
}
