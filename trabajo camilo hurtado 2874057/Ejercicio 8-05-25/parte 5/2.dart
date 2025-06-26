// Convertir de Celsius a Fahrenheit
double celsiusAFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Convertir de Fahrenheit a Celsius
double fahrenheitACelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main() {
  // Pruebas
  double temp1 = celsiusAFahrenheit(25);
  double temp2 = fahrenheitACelsius(77);

  print('25°C en Fahrenheit es: ${temp1.toStringAsFixed(2)}°F');
  print('77°F en Celsius es: ${temp2.toStringAsFixed(2)}°C');
}
