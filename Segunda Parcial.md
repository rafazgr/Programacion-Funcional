# Segunda Parcial: Programación Orientada a Objetos
## Ejercicios realizados en clase con el lenguaje Dart
### Ejercicio 1. Calculadora que emplea funciones
#### 1.1 Descripción del problema
Realizar una calculadora que lea dos numeros del teclado y obtenga 
suma, resta, multiplicación y división, usando funciones, y asigne 
valores a dos variables.
#### 1.2 Código
```dart
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
```
#### 1.3 Ejecución
```
Calculadora

  1.- Suma +
  2.- Resta -
  3.- Multiplicación *
  4.- División /

Ingrese una opción:
/
Ingresa un número
19
Ingresa otro número
4
```
#### 1.4 Salida
```
19.0 / 4.0 = 4.75
```
### Ejercicio 2. Clase Estudiante
#### 2.1 Descripción del problema
Crear una clase _Estudiante_ que tenga de propiedades el nombre de la carrera, semestre y número de cuenta.
#### 2.2 Código
```dart
class Estudiante{
  String? carrera;
  int? semestre; 
  String? nrocuenta;

  void reporte(){
    print("Carrera:   $carrera");
    print("Semestre:  $semestre");
    print("N° cuenta  $nrocuenta"); 
  }
}
```
#### 2.3 Implementación
```dart
void main(){

  var estudiante1 = Estudiante();
  estudiante1.carrera = "Ingeniería en computación inteligente";
  estudiante1.semestre = 3;
  estudiante1.nrocuenta = "20184665";
  estudiante1.reporte();
}
```
#### 2.4 Salida
```
Carrera:   Ingeniería en computación inteligente
Semestre:  3
N° cuenta  20184665
```
### Ejercicio 3. Calculadora mediante clases
#### 3.1 Descripción del problema
Crear una clase _Calculadora_ que tenga como propiedades dos números a operar así como la operación que debe realizar, e implementar estas como métodos.
#### 3.2 Código
```dart
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
```
#### 3.3 Implementación
```dart
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
```
#### 3.4 Ejecución
```
Ingresa la operación a realizar
+
Ingresa un número
14
Ingresa otro número
18
```
#### 3.5 Salida
```
14 + 18 = 32
```
### Ejercicio 4. Reescribir nombre y calcular edad
#### 4.1 Descripción del problema
Crear una clase que calcule la edad de una persona dado el año actual y año de nacimiento, y reescriba el nombre de esta como _Apellido Paterno_ _ApellidoMaterno_ _Nombre_.
#### 4.2 Código
```dart
class Persona{
  String nombre = "";
  String aPaterno = "";
  String aMaterno = "";
  int aNacimiento = 0;

  int calcularEdad() => 2022 - aNacimiento;

  void showInfo(){
    print("$aPaterno $aMaterno $nombre");
    print("Su edad es ${calcularEdad()}");
  }
}
```
#### 4.3 Implementación
```dart
void main(){
  var lic = new Persona();

  lic.nombre = "Rafael";
  lic.aPaterno = "Zamora";
  lic.aMaterno = "Guerrero";
  lic.aNacimiento = 2003;

  lic.showInfo();
}
```
#### 4.4 Salida
```
Zamora Guerrero Rafael
Su edad es 19
```
### Ejercicio 5. Clase Vehículo
#### 5.1 Descripción del problema
Crear una clase _Vehiculo_ que cuente con las propiedades _llantas_, _color_, _marca_ y _modelo_, así como los métodos _arrancar_, _correr_ y _frenar_. Emplear constructores para asignar todos los valores de las propiedades, y uno para acceder únicamente la marca.
#### 5.2 Código
```dart
class Vehiculo {
  int _llantas = 0;
  String _color = "Desconocido";
  String _marca = "Desconocido";
  String _modelo = "Desconocido";

  Vehiculo(this._llantas, this._color, this._marca, this._modelo);  
  Vehiculo.marca(this._marca);

  int get llantas => _llantas;
  String get color => _color;
  String get marca => _marca;
  String get modelo => _modelo;

  void set llantas(int llantas) => _llantas = llantas;
  void set color(String color) => _color = color;
  void set marca(String marca) => _marca = marca;
  void set modelo(String modelo) => _modelo = modelo;

  void status(){
    if(_llantas==0){
      print("Número de llantas: Desconocido");
    }else{
      print("Número de llantas: $_llantas");
    }
    print("Color: $_color");
    print("Marca: $_marca");
    print("Modelo: $_modelo");
  }

  void arrancar(){
    print("Arrancando");
  }

  void correr(){
    print("Corriendo");
  }

  void frenar(){
    print("Frenando");
  }
}                    
```
#### 5.3 Implementación
```dart
void main(){
  var miCarrito = new Vehiculo(4,"Negro","Chevrolet","Aveo");
  var miTroquita = new Vehiculo.marca("Nissan");

  miCarrito.status();
  miTroquita.status();
  
  miCarrito.arrancar();
  miCarrito.correr();
  miCarrito.frenar();
}
```
#### 5.4 Salida
```
Número de llantas: 4
Color: Negro
Marca: Chevrolet
Modelo: Aveo

Número de llantas: Desconocido
Color: Desconocido
Marca: Nissan
Modelo: Desconocido

Arrancando
Corriendo
Frenando
```
### Ejercicio 6. Clase Animal
#### 6.1 Descripción del problema
Crear una superclase _Animal_ que cuente con propiedades que describan a cualquier especie y con métodos aplicables a cualquier objeto. Crear dos subclases (_Perro_ y _Ave_) heredando la clase _Animal_, y a partir de estas, crear otra la clase final _mounstro_.
#### 6.2 Código
```dart
class Animal{
  String _clase = "";
  String _orden = "";
  String _especie = "";


  Animal();
  Animal.datos(this._clase, this._orden, this._especie);  
  
  String get clase => _clase;
  String get orden => _orden;
  String get especie => _especie;


  void set clase(String clase) => _clase= clase;
  void set orden(String orden) => _orden = orden;
  void set especie(String especie) => _especie = especie;
  
  void informe(){
    print("Clase: $_clase");
    print("Orden: $_orden");
    print("Especie: $_especie");
  }

  void caminar(){
    print("\nAnimal caminando \n");
  }
}                

class Perro extends Animal{
  String _raza = "";

  Perro();
  Perro.datos(_clase, _orden, _especie, this._raza) : super.datos(_clase, _orden, _especie);

  void ladrar(){
    print("Guau \n");
  }

  void caminar(){
    print("Perro caminando \n");
  }

  void informe(){
    super.informe();
    print("Raza: $_raza\n");
  }
}

class Ave extends Animal{
  String _nombreComun = "";

  Ave();
  Ave.datos(_clase, _orden, _especie, this._nombreComun) : super.datos(_clase, _orden, _especie);

  void cantar(){
    print("En las cumbres de un verde mezquite, tristemente cantaba un $_nombreComun...\n");
  }

  void volar(){
    print("$_nombreComun volando\n");
  }

  void informe(){
    super.informe();
    print("Nombre común: $_nombreComun\n");
  }
}

class Monstruo extends Perro
{
  bool _spooky = false;

  Monstruo();
  Monstruo.datos(this._spooky);

  void asustar() {
    print("Boo\n");
  }
  void informe() {
    if (_spooky == true){
      print("Efectivamente, el mounstro es bastante tenebroso\n");
    }
    else{
      print("El mounstro no es muy tenebroso");
    }
  }
}                   
```
#### 6.3 Implementación
```dart
void main(){
  var humano = new Animal.datos("Mamífero","Primate","Homo sapiens");

  humano.informe();
  humano.caminar();

  var perrito = new Perro.datos("Mamífero","Carnivoro","Canis familaris","Bull Terrier");

  perrito.informe();
  perrito.caminar();
  perrito.ladrar();

  var pajarito = new Ave.datos("Aves","Passeriformes","Carduelis carduelis","Jilguero");

  pajarito.informe();
  pajarito.cantar();
  pajarito.volar();

  var ICIdev = new Monstruo.datos(true);

  ICIdev.asustar();
  ICIdev.informe();
}
```
#### 6.4 Salida
```
Clase: Mamífero
Orden: Primate
Especie: Homo sapiens

Animal caminando 

Clase: Mamífero
Orden: Carnivoro
Especie: Canis familaris
Raza: Bull Terrier

Perro caminando 

Guau 

Clase: Aves
Orden: Passeriformes
Especie: Carduelis carduelis
Nombre común: Jilguero

En las cumbres de un verde mezquite, tristemente cantaba un Jilguero...

Jilguero volando

Boo

Efectivamente, el mounstro es bastante tenebroso
```