void main() {
  //ex1();
  //ex2();
  //ex3();
  //ex4();
  ex5();
}

void ex1(){
  int c = 100;
  while(c > 0){
    print(c);
    c--;
  }
}
void ex2(){
  int c = 0;
  while(c <= 100){
    print(c);
    c += 2;
  }
}
void ex3(){
  int n = 3;
  int i = 1;

  while(i <= 100){
    print("Tábuada do $n: $n X $i = ${n * i}");
    i++;
  }
}
void ex4(){
  int n1 = 3;
  int n2 = 8;
  int resu = 0;

  while(n2 > 0){
    
    resu += n1;
    n2--;
  }
  print(resu);
}
void ex5(){
  int atual = 1;
  int novo = 1;
  int antigo = 0;
  int c = 0;
  while(c < 20){
    
    c++;
  }
  print(atual);
}