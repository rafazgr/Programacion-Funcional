void main(){
  var estudiante1 = Estudiante();
  estudiante1.carrera = "Ingeniería en computación inteligente";
  estudiante1.semestre = 3;
  estudiante1.nrocuenta = "20184665";
  estudiante1.reporte();
}

// La primer letra de una clase es mayúscula
class User {
  //propiedades
  String? nombre;
  int? edad;
  //Métodos
  void reporte(){
    print(nombre);
    print(edad);
  }
}

//Clase estudiante y que tenga de propiedades el nombre de la carrera, semestre y número de cuenta
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