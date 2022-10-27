void main(){
  User usuario1 = User();
  usuario1.nombre = "Rafa";
  usuario1.edad = 19;
  print(usuario1.nombre);
  //usuario1.reporte();
}

class User {
  String? _nombre;
  int? _edad;

  void set nombre(String nombre){
    _nombre = nombre;
  }

  void set edad(int edad){
    _edad = edad;
  }

  String get nombre{
    return _nombre!;
  }

  int get edad{
    return _edad!;
  }

  void reporte(){
    print(_nombre);
    print(_edad);
  }
}