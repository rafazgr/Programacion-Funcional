void main(){
  var usuario1= User(); //instancia de la clase User
  usuario1._nombre = "Rafa";
  usuario1._edad = 19;
  usuario1.reporte();

}
//encapsulamiento
//- ocultar los atributos de la clase
//- hacerlos locales dentro de la clase
//.el simbolo _
class User {
  String? _nombre;
  int? _edad;

  void reporte(){
    print(_nombre);
    print(_edad);
  }
}