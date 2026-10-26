import 'dart:math';

class Carro {
  //método construtor: inicializar atributos da classe
  // Carro(int veloMax){
  //   this.veloMax = veloMax; //this: indica que é o atributo 
  //   print("uma instância de carro foi criada");
  //   //Ações essencias para o funcionamento da classe
  //   print("poderia acessar o valor do combustível do dia...");
//}

//equivalente ao de cima: formal initialing
Carro(
  this.modelo, 
  this.veloMax, 
  {this.placa = "N/A",
   required this.cor }); //nomeado obrigatorio
//{nomeado: opcional }
 




  //atributos: características
  late String modelo;
  int veloAtual = 0;
  late int veloMax;
  bool ligado = false;
  String placa = 'N/A';
  late String cor;

  //métodos: comportamentos
  void ligar() {
    ligado = true;
  }

  //frear: recebe uma qtd e diminui a veloAtual, sem ficar negativa
  void frear(int qtd) {
    veloAtual -= qtd;
    veloAtual = veloAtual < 0 ? 0 : veloAtual;
  }

  //carro deve estar ligado
  //acelerar: recebe uma qtd, sem ultrapassar veloMax
  void acelerar(int qtd) {
    if (ligado) {
      veloAtual += qtd;
      veloAtual = veloAtual > veloMax ? veloMax : veloAtual;
    } else {
      print('Carro desligado');
    }
  }


}