

//operador ternario // Se utiliza para evaluar una condición y devolver un valor u otro dependiendo de si la condición es verdadera o falsa
// El operador ternario es una forma concisa de escribir una declaración if-else
void main() {
  int edad = 18;

  String mensaje = (edad >= 18) ? 'Eres mayor de edad' : 'Eres menor de edad';

  print(mensaje);
  print(sumar(5, 3)); //codigo de suma 
  combinar(); //codigo de combinacion
}


// función flecha // Se utiliza para definir funciones de una sola línea de manera más concisa

int sumar(int a, int b) => a + b;

//linea 11 llamamos a la funcion sumar


//operador de expansion // Se utiliza para expandir una colección (como una lista o un conjunto) en otro contexto, como al crear una nueva lista o al pasar argumentos a una función

void combinar() {
  List<int> lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5];

  List<int> combinada = [...lista1, ...lista2];

  print(combinada); // [1, 2, 3, 4, 5]
}
