import 'dart:io';

void main(){
  print("""Calculadora

  1.- Suma +
  2.- Resta -
  3.- Multiplicación *
  4.- División /
  
Ingrese una opción:""");

  String opcion = stdin.readLineSync()!;
  print("Ingresa un número");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Ingresa otro número");
  double num2 = double.parse(stdin.readLineSync()!);

  print("${calcular(opcion,num1,num2)}");
}

String calcular(String op, double n1, double n2){

  switch(op) {
    case '+':
      return "$n1 + $n2 = ${suma(n1, n2)}";
    case '-':
      return "$n1 - $n2 = ${resta(n1, n2)}";
    case '*':
      return "$n1 * $n2 = ${multiplicacion(n1, n2)}"; 
    case '/':
      return "$n1 / $n2 = ${division(n1, n2)}"; 
    default:
      return "Operación inexistente";
  }
}

double suma(double num1, double num2) => num1 + num2;
double resta(double num1, double num2) => num1 - num2;
double multiplicacion(double num1, double num2) => num1 * num2;
double division(double num1, double num2) => num1 / num2;