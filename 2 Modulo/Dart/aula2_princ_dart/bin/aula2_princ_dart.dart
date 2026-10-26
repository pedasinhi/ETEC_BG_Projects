void main(){
  //exemplo1();
  //exemplo2();
  //exemplo3();
  //exemplo4();
  exemplo5();
}

void exemplo1() {
  int nota = 4;;

  if(nota >= 9){
    print("MB");
  }
  else if(nota >= 7){
    print("B");
  }
  else if(nota >= 5){
    print("R");
  }
  else{
    print("I");
  }
}

void exemplo2(){
  double nota = 7.4;
  int falta = 10;

  if(nota >= 7 && falta < 21){
    print("Aprovado");
  }
  else{
    print("Reprovado");
  }
}

void exemplo3(){
  int idade = 18;
  bool amigo = true;

  if(idade > 18 || amigo == true)
    print("autorizado");

  else
    print("Reprovado");
}

void exemplo4(){
  int v1 = 6, v2 = 3, v3 = 1;

  if(v1 < v2 && v1 < v3){
    print("v1 $v1, $v2, $v3");
  }
  else if(v2 < v3){
    print("v2 $v2, $v1, $v3");
  }
  else{
    print("v3 $v3, $v2, $v1");
  }
}

void exemplo5(){
  int v1 = 8, v2 = 51, v3 = 1;

    if(v1 > v2 && v1 > v3){
    print("v1 $v1, $v2, $v3");
  }
  else if(v2 > v3){
    print("v2 $v2, $v1, $v3");
  }
  else{
    print("v3 $v3, $v2, $v1");
  }
}