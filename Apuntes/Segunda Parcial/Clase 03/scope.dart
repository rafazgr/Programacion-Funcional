int x = 25;
void main(){
  var x = 5;
  void showNumber(){
    var y = 10;
    print(x);
    print(y);
  }

  showNumber();
  showX();
}

void showX(){
  print(x);
}

//funciones fat arrow
void showX1(){
  print(x);
}

void showX2() => print(x);