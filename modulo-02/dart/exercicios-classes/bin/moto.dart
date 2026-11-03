import 'veiculo.dart';

class Moto extends Veiculo {
  late bool partidaEletrica;

  void ligarMoto() {
    if (partidaEletrica) {
      print('A $modelo foi ligada na partida elétrica');
    } else {
      print('A $modelo foi ligada no pedal');
    }
  }

  // Usa ligarMoto() e verificarLicenciamento()
  void darGrau() {
    ligarMoto();

    if (verificarLicenciamento()) {
      print('A $modelo está empinando');
    } else {
      print('A $modelo não pode empinar sem licenciamento');
    }
  }
}