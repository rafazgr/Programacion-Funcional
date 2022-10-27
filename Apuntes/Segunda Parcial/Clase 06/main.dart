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

class Animal{
  //propiedades
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

  //Métodos
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
    //super.caminar();
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
    //super.caminar();
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