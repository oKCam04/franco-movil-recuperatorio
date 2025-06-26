void main() {
  // Lista de tareas con su estado
  List<String> tareas = [];
  List<bool> hechas = [];

  // Agregar tareas
  tareas.add('Estudiar Dart');
  hechas.add(false);

  tareas.add('Lavar los platos');
  hechas.add(false);

  tareas.add('Hacer ejercicio');
  hechas.add(false);

  // Marcar la segunda tarea como hecha (índice 1)
  hechas[1] = true;

  // Mostrar tareas
  print('📋 Lista de Tareas:');
  for (int i = 0; i < tareas.length; i++) {
    String estado = hechas[i] ? '[Hecha]' : '[Pendiente]';
    print('$estado ${tareas[i]}');
  }
}
