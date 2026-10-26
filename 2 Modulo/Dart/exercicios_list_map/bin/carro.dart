class Carro {
  //atributos
  late String modelo;
  int veloAtual = 0;
  late int veloMax;
  bool ligado = false;

  //metodos e comportamentos
  void ligar() {
    ligado = true;
  }

  // frear: recebe uma quantidade que diminuia a velocidadeAtual, sem ficar negativo
  void frear(int qtd) {
    veloAtual -= qtd;
    veloAtual = veloAtual < 0 ? 0 : veloAtual;
  }

  void acelerar(int qtd) {
    if (ligado) {
      veloAtual += qtd;
      veloAtual = veloAtual > veloMax ? veloMax : veloAtual;
    } else {
      print("Carro desligado");
    }
  }
}
