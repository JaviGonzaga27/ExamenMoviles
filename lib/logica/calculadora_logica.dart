class CalculadoraLogica {
  bool verificarNumeros(String num1, String num2) {
    return num1.isNotEmpty && num2.isNotEmpty;
  }

  double sumar(double a, double b) => a + b;
  double restar(double a, double b) => a - b;
  double multiplicar(double a, double b) => a * b;

  double dividir(double a, double b) {
    if (b == 0) {
      throw ArgumentError('No se puede dividir por cero');
    }
    return a / b;
  }

  double modulo(double a, double b) {
    if (b == 0) {
      throw ArgumentError('No se puede calcular el módulo con divisor cero');
    }
    return a % b;
  }
}
