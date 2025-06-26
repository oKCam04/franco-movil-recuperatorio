void main() {
  // Crear un Set de ciudades
  Set<String> ciudades = {'Bogotá', 'Medellín', 'Cali'};

  print('Ciudades iniciales: $ciudades');

  // Agregar una ciudad nueva
  ciudades.add('Cartagena');
  print('Después de agregar Cartagena: $ciudades');

  // Intentar agregar una ciudad duplicada
  ciudades.add('Bogotá');
  print('Después de intentar agregar Bogotá de nuevo: $ciudades');

  // Eliminar una ciudad
  ciudades.remove('Cali');
  print('Después de eliminar Cali: $ciudades');
}
