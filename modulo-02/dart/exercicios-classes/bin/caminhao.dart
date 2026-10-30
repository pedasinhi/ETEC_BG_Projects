import 'veiculo.dart';

class Caminhao extends Veiculo {
  late double capacidadeCarga;

  void carregarCaminhao() {

    if(capacidadeCarga >= capacidadeCarga){
      print('Impossível carregar o $modelo pois não possui mais capcidade');
    }
    else {
      print('Possível carregar o $modelo pois possui capcidade');
    }
  }

}