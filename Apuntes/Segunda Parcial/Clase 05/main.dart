void main(){
  var miCarrito = new Vehiculo(4,"Negro","Chevrolet","Aveo");
  var miTroquita = new Vehiculo.marca("Nissan");

  miCarrito.status();
  miTroquita.status();
  
  miCarrito.arrancar();
  miCarrito.correr();
  miCarrito.frenar();
}

class Vehiculo {
  //propiedades
  int _llantas = 0;
  String _color = "Desconocido";
  String _marca = "Desconocido";
  String _modelo = "Desconocido";
  
  //Constructores
  //Deben tener el mismo nombre que la clase
  
  //Vehiculo(int llantas, String color, String marca, String modelo){
  //  this._llantas= llantas;
  //  this._color= color;
  //  this._marca= marca;
  //  this._modelo= modelo;
  //}

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

  //Métodos
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