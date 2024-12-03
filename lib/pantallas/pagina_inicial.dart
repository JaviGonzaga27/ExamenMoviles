import 'package:flutter/material.dart';
import 'pagina_resultados.dart';
import '../logica/calculadora_logica.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  final _formKey = GlobalKey<FormState>();
  final numero1Controller = TextEditingController();
  final numero2Controller = TextEditingController();
  final calculadora = CalculadoraLogica();

  void _calcular() {
    if (_formKey.currentState!.validate()) {
      final num1 = double.parse(numero1Controller.text);
      final num2 = double.parse(numero2Controller.text);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PaginaResultados(
            numero1: num1,
            numero2: num2,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Campo para el primer número
              TextFormField(
                controller: numero1Controller,
                decoration: InputDecoration(
                  labelText: 'Primer número',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese un número';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Campo para el segundo número
              TextFormField(
                controller: numero2Controller,
                decoration: InputDecoration(
                  labelText: 'Segundo número',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese un número';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // Botón para calcular
              ElevatedButton(
                onPressed: _calcular,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
