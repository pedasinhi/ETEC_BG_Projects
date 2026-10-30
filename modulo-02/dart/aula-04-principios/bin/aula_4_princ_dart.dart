void main(){
  //exemplo1();
  //exemplo2();
  //exemplo3();
  //exemplo4();
  exemplo5();
}

void exemplo5(){

  // int x = 0;
  // int y = 1;
  // int z = 1;

  // for(int i = 0; i <= 10; i++){
  //   print(x);
    
  //   x += y;
  //   y += x;
  //   z += y;
  // }

  int i = 1;

  while(i <=5){
    int j = 1;
    while(j<=i){
      print(j);
      j++;
    }
    print("\n");
    i++;
  }

}

void exemplo4(){

  int n = 5;
  int i = n - 1;

  while(i >= 1){
    print("fattorial de $n: ${n *= i }");
    i--;
  }
}

void exemplo3(){

  int n = 5;
  int i = 1;

  while(i <= 10){
    print("Tábuada do $n: ${n * i}");
    i++;
  }

}

void exemplo2(){

  int i = 10;

  while(i <= 50){

    print("Número pares $i");
    i += 2;

  }

}

void exemplo1(){
  int i = 1;
  while(i <= 10){
    print(" Execução do número: $i");
    i ++;
  }
}