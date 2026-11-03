import 'veiculo.dart';

class Carro extends Veiculo {
  late int capacidadeCombustivel;
  int combustivelAtual = 0;

  void abastecerVeiculo(int litros) {
    if (combustivelAtual + litros <= capacidadeCombustivel) {
      combustivelAtual += litros;
      print('O veículo $modelo abasteceu $litros L (tanque: $combustivelAtual L)');
    } else {
      print('O veículo $modelo não pode abastecer $litros L');
    }
  }

  // Usa acelerar(): só viaja se tiver combustível
  void viajar() {
    if (combustivelAtual > 0) {
      acelerar();
      combustivelAtual -= 1;
      print('O $modelo viajou e gastou 1 L (tanque: $combustivelAtual L)');
    } else {
      print('O $modelo está sem combustível para viajar');
    }
  }
}