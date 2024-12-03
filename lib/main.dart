import 'package:flutter/material.dart';
import 'pantallas/pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Simple',
      home: PaginaInicial(),
    );
  }
}
