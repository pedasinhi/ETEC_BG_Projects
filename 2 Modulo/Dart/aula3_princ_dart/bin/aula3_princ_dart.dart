void main(){
  //exemplo1();
  //exemplo2();
  //exemplo3();
  //exemplo4();
  exemplo5();
}


void exemplo5(){

  int idade = 18;

  print(idade >= 18 ? "Pode tomar cachaça" : "Não pode tomar cachaça");

}

void exemplo3(){

  int nota = 7;
  String situacao = nota >= 6 ? "aprovado" : "reprovado";

  print(situacao);

}

void exemplo4(){

  int vidaInimigo = 100;
  int dano = 150;

  vidaInimigo -= dano;

  vidaInimigo = vidaInimigo < 0 ? 0 : vidaInimigo;

  print(vidaInimigo);

}

void exemplo2(){

  int mes = 12;

  switch(mes){
    case 1:
      print("Janeiro");
      break;
    case 2:
      print("Fevereiro");
      break;
    case 3:
      print("Março");
      break;
    case 4:
      print("Abril");
      break;
    case 5:
      print("Maio");
      break;
    case 6:
      print("Junho");
      break;
    case 7:
      print("Julho");
      break;
    case 8:
      print("Agosto");
      break;
    case 9:
      print("Setembro");
      break;
    case 10:
      print("Outubro");
      break;
    case 11:
      print("Novembro");
      break;
    case 12:
      print("Dezembro");
      break;
    default:
      print("Valor inválido");

    
  }

}

void exemplo1(){
  
  String sigla = "sp";

  switch (sigla) {
    case "sp":
      print("São Paulo");
      break;
    case "rj":
      print("Rio de Janeiro");
      break;
    case "es":
      print("Espiríto Santo");
      break;
    default:
      print("Sigla inválida");
  }
}