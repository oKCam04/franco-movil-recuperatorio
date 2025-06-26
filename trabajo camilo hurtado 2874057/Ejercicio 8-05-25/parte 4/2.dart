void main() {
  // Definir un record con título, autor y año
  var libro = ('Cien años de soledad', 'Gabriel García Márquez', 1967);

  // Acceder a los valores usando $1, $2, $3
  print('Título: ${libro.$1}');
  print('Autor: ${libro.$2}');
  print('Año de publicación: ${libro.$3}');
}
