import 'veiculo.dart';

class Caminhao extends Veiculo {
  late double capacidadeCarga;
  double cargaAtual = 0;

  void carregarCaminhao(double peso) {
    if (cargaAtual + peso <= capacidadeCarga) {
      cargaAtual += peso;
      print('Possível carregar o $modelo, carga atual: $cargaAtual kg');
    } else {
      print('Impossível carregar o $modelo pois não possui mais capacidade');
    }
  }

  // Usa acelerar(): só sai para entrega se estiver carregado
  void iniciarEntrega() {
    if (cargaAtual > 0) {
      print('O $modelo saiu para entrega com $cargaAtual kg');
      acelerar();
    } else {
      print('O $modelo está vazio, não há entrega para fazer');
    }
  }
}