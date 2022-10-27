/*//Comentarios de una sola línea

/*Comentarios en
Bloque
*/

void main() {
    print("Hola mundo");
    print(2 + 2);
    print('Hola');
}

//Tipos de datos
//String
//Int
//num
//dynamic
//Declaración de variables de manera explícita
 //Interpolación de cadenas

void main() {
    String nombre = "Alex";
    String apellido;
    int aActual = 2022;
    int aNacimiento = 1971;
    int edad = 50; //tipado estático
    double gravedad = 9.81;
    apellido = "Mata";
    print("Hola $nombre $apellido tienes ${aActual - aNacimiento} años}")
    print(apellido + " " + nombre); //concatenación
    print(edad);
    print(gravedad);

    num numero1 = 5;
    print(numero1);
    numero2 = 9.81;
    print(numero1 * numero2);

    dynamic variable = "Hola";
    print(variable);
    variable = 5;
    print(variable);
    variable = 9.81;
    print(variable);
    variable = true;
    print(variable);
}

//funciones
int calcularEdad(int aActual, int aNacimiento){
    return aActual - aNacimiento;
}

String getNombre(){
    return "Alex";
}

String getApellido(){
    return "Mata";
}

import 'dart:io';
//tipado estático, definir el tipo de dato
//Inferencia de tipo de dato
void main() {
    print("Dame tu edad");
    var edad = stdin.readLineSync(); //en tiempo de ejecución
    print(edad is int);
    print(edad is double);
    print(edad is bool);
    print(edad is String);

    int edad = 50;
    print(edad.runtimeType);

    var status = esPar(8);
    print(status.runtimeType)
    // tiempo de compilación
}

bool esPar(int num){
    if (num % 2 == 0){
        return true;
    }else
        return false;
}


import 'dart:io';
//calculadora que lea dos numeros del teclado y obtenga suma, resta, multiplicación y
//division, usando funciones y asingnado valores a dos variables

void main() {
  int num1 = leerNumero("Dame el primer número");
  int num2 = leerNumero("Dame el segundo número");
  print("${calculadora("x", num1, num2)}");
}

int leerNumero(String mensaje) {
  print(mensaje);
  int num = int.parse(stdin.readLineSync()!);
  return num;
}

String calculadora(String op, int n1, int n2) {
  if (
if (op == "+") {
    return "$n1 + $n2 = ${suma(n1, n2)}";
  } else if (op == "-") {
    return "$n1 - $n2 = ${suma(n1, n2)}";
  } else if (op == "*") {
    return "$n1 * $n2 = ${suma(n1, n2)}";
  } else if (op == "/") {
    return "$n1 / $n2 = ${suma(n1, n2)}";
  } else {
    return "Operación inválida";
  }
}

int suma(int num1, int num2) => num1 + num2;
int resta(int num1, int num2) => num1 - num2;
int multi(int num1, int num2) => num1 + num2;
int divi(int num1, int num2) {
  return num1 + num2;
}*/