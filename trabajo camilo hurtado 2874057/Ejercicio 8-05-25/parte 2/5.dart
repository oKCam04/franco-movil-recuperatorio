void main() {
  // Crear un Map de países y capitales
  Map<String, String> capitales = {
    'Colombia': 'Bogotá',
    'Perú': 'Lima',
    'México': 'Ciudad de México',
    'Argentina': 'Buenos Aires',
    'España': 'Madrid'
  };

  // Imprimir la capital de un país específico
  String pais = 'México';
  print('La capital de $pais es ${capitales[pais]}.');
}
