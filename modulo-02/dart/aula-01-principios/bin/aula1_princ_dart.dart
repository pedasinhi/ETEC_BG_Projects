void main() {
  //exemplo2();
  //exemplo3();
  exemplo4();

}

void exemplo4() {
  double salarioMensal = 10000;

  print("salário anual: ${salarioMensal*13}");
}

void exemplo3() {
  int v1 = 9;
  int v2 = 12;
  
  v1 += v2;
  v2 = v1 - v2;
  v1 -= v2;

  print("valor 1: $v1, valor 2: $v2");
}

void exemplo1(){
  String nome = "Matheus";
  int matricula = 12345;
  double nota = 9.9;
  bool aprovado = true;
  String aproved = aprovado == true ? "aprovado" : "reprovado";
  print("Olá, $nome sua matricula é: $matricula. Foi aprovado? $aproved com nota $nota");
}

void exemplo2() {
  int valor = 137;
  int n100, n50, n20, n10, n5, n2 = 0;

  n100 = (valor/100).toInt();
  valor = valor % 100;  
  n50 = (valor/50).toInt();
  valor = valor % 50;
  n20 = (valor/20).toInt();
  valor = valor % 20;
  n10 = (valor/10).toInt();
  valor = valor % 10;
  n5 = (valor/5).toInt();
  valor = valor % 5;
  n2 = (valor/2).toInt();
  valor = valor % 2;

  print("$n100, $n50, $n20, $n10, $n5, $n2"); 
}