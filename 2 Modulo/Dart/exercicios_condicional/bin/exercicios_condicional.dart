void main(){
  //exercicio1();
  //exercicio2();
  //exercicio3();
  exercicio4();
  //exercicio5();
  //exercicio6();
  //exercicio7();
}

void exercicio1(){
  int a = 1;
  int b = 3;

  if(a > b)
    print(a);
  else
    print(b);
}
void exercicio2(){
  int v1 = 30;
  int v2 = 20;
  int v3 = 10;

  if(v1 == v2 && v1 == v3){
    print("equilátero");
  }

  else if(v2 == v3 || v3 == v1){
    print("isoceles");
  }
  
  else{
    print("escaleno");
  }
}
void exercicio3(){
  //Use operador ternário para validar se um nome está em branco. Caso esteja, atribuir o texto "não informado" à ele.

  String nome = "";

  print(nome == "" ? "Insira um nome" : "Nome válido, olá ${nome}");
}
void exercicio4(){
  //Dados 5 valores, imprima quantos desses valores são negativos. Dica: usar uma variável para contar quantos valores negativos há.

  int v1 = -2;
  int v2 = 4;
  int v3 = 4;
  int v4 = -3;
  int v5 = 4;
  int c = 0;

  if(v1 < 0)
    c++;
  if(v2 < 0)
    c++;
  if(v3 < 0)
    c++;
  if(v4 < 0)
    c++;
  if(v5 < 0)
    c++;
  

  print(c);
}
void exercicio5(){
  String cor = "amarelo";

  switch (cor) {
    case "amarelo":
      print("Yellow");
      break;
    case "vermelho":
      print("red");
      break;
    case "Rosa":
      print("Pink");
      break;
    case "Azul":
      print("Blue");
      break;
    case "Preto":
      print("Black");
      break;
    default:
      print("Insira apenas uma cor das palhetas");
  }
}
void exercicio6(){
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
void exercicio7(){
  int v1 = 1;
  int v2 = 2;

  if(v1 > v2)
    print(v1);
  else if(v2 > v1)
    print(v2);
  else
    print("iguais");
}
