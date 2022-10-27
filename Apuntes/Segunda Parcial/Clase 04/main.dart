// Calculador a que +,-,*,/ dos numeros como argumento

/*
void main() {
  Calculadora miSC = Calculadora();
  miSC.a = 5;
  miSC.b = 10;

  int res = miSC.suma(miSC.a,miSC.b);
  print("${miSC.a} + ${miSC.b} = $res");
  print("${miSC.a} + ${miSC.b} = ${miSC.suma(miSC.a,miSC.b)}");
  print("${miSC.a} + ${miSC.b} = ${miSC.resta(miSC.a,miSC.b)}");
  print("${miSC.a} + ${miSC.b} = ${miSC.multiplicacion(miSC.a,miSC.b)}");
  print("${miSC.a} + ${miSC.b} = ${miSC.division(miSC.a,miSC.b)}");
}

//instancia de la clase calculadora
class Calculadora{
  int a = 0, b = 0;

  int suma(int a, int b)=> a+b;             //declarativa
  int resta(int a, int b)=> a-b;            //declarativa
  int multiplicacion(int a, int b)=> a*b;   //declarativa
  double division(int a, int b)=> a / b;    //declarativa
}
*/

/*
void main() {
  //invocar
  //print(suma(2,2));
  //asignación
  //var res = suma(3,3);
  //print(res);
}

int suma(int a, int b)=> a+b;     //declarativa

int sumaB(int a, int b){
  //imperativa
  var sumaRes = a + b;
  return sumaRes;
}
*/

/*
void main(List<String> args) {
  print(args);
  for (var i = 0; i< args.length; i++){
    print(args[i].runtimeType);
  }

  args.forEach((e){
    print(e.runtimeType);
  });
  args.forEach((e) => print(e.runtimeType)); //declarativa
}
*/

import 'dart:io';
void main() {

  Calcular calc = new Calcular();

  print("Ingresa la operación a realizar");
  calc.op = stdin.readLineSync()!;
  print("Ingresa un número");
  calc.n1 = int.parse(stdin.readLineSync()!);
  print("Ingresa otro número");
  calc.n2 = int.parse(stdin.readLineSync()!);

  print("${calc.calcular(calc.op, calc.n1, calc.n2)}");
} 


class Calcular{
  String op = '';
  int n1 = 0; 
  int n2 = 0;
  
  int suma(int a, int b)=> a+b;
  int resta(int a, int b)=> a-b;
  int multiplicacion(int a, int b)=> a*b;
  double division(int a, int b)=> a / b;

  String calcular(String op, int n1, int n2){
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
}

/*
void main(List<String> args) {
  Calculadora calc = new Calculadora();
  int n1 = 0;
  int n2 = 0;

  if (args.length == 2){
    calc.a = int.parse(args[0]);
    calc.b = int.parse(args[1]);
    print(calcular(2,5,'+'));
    print(calc.suma(calc.a,calc.b));
  }else{
    print("Error de argumenotos");
    print("Formato: dart main.dart 4 5");
  }
} 

  class Calculadora{
  int a = 0, b = 0;

  int suma(int a, int b)=> a+b;             //declarativa
  int resta(int a, int b)=> a-b;            //declarativa
  int multiplicacion(int a, int b)=> a*b;   //declarativa
  double division(int a, int b)=> a / b;    //declarativa
}
*/