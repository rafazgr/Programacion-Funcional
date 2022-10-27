import 'dart:math';
import 'dart:io';
void main(List<String> args) {
  /*
  var n1 = 15;
  var n2 = 7;
  print("Suma: $n1 + $n2 = ${n1 + n2}");
  print("Resta: $n1 - $n2 = ${n1 - n2}");
  print("Multiplicacion: $n1 * $n2 = ${n1 * n2}");
  print("División: $n1 / $n2 = ${n1 / n2}");
  print("División entera: $n1 ~/ $n2 = ${n1 ~/ n2}");
  print(pow(5,3));
  print("Mínimo: ${max(5,3)}");
  print("Máximo: ${min(5,3)}");
  print("Seno: ${sin(45 * pi / 180)}");
  print("Coseno: ${cos(145 * pi / 180)}");
  print("sqrt: ${sqrt(5)}");

  print(10.isOdd);
  print(10.isEven);
  */

  /*
  var contador=0;
  contador = contador + 1;
  print(contador);
  contador++;
  print(contador);
  ++contador;
  print(contador);
  contador+=2;
  print(contador);

  contador = 10;
  contador = contador - 1;
  print(contador);
  contador--;
  print(contador);
  --contador;
  print(contador);
  contador-=2;
  print(contador);

  //cociente % 2 residuo %= 2;
  */

  /*
  const int miEntero = 10; //tiempo de compilación
  final finalEntero = 5;  //tiempo de ejecución
  print(miEntero);
  */

  /*
  var cadena = 5;

  print(cadena is String);
  print(cadena.runtimeType);

  var miLista = [1,"Hola", 9.8, true];
  print(miLista);
  //agregrar elementos a lista
  miLista.add(3.1416);
  */

  const List<dynamic> miLista = [1,2,3,4,"hola"];
  print(miLista);
  var data = stdin.readLineSync();
  //agregar elementos
  miLista.add(data);
  print(miLista);
}