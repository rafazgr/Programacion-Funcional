//Clase que calcule la edad de una persona dado el año actual y año de nacimiento,
// y reescriba el nombre de esta como ApellidoPaterno ApellidoMaterno Nombre.

void main(){
  var lic = new Persona();

  lic.nombre = "Rafael";
  lic.aPaterno = "Zamora";
  lic.aMaterno = "Guerrero";
  lic.aNacimiento = 2003;

  lic.showInfo();
}

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