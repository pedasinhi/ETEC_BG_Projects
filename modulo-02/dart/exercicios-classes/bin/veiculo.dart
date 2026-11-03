class Veiculo {
  late String modelo;
  late int velocidade;
  late bool licenciado;

  bool verificarLicenciamento() {
    if (licenciado) {
      print('O veículo $modelo está licenciado');
    } else {
      print('O veículo $modelo não está licenciado');
    }
    return licenciado;
  }

  // Usa verificarLicenciamento(): só acelera se estiver licenciado
  void acelerar() {
    if (verificarLicenciamento()) {
      velocidade += 10;
      print('Velocidade atual do $modelo: $velocidade km/h');
    } else {
      print('O $modelo não pode acelerar');
    }
  }

  void frear() {
    velocidade -= 10;

    if (velocidade < 0) {
      velocidade = 0;
    }
    print('Velocidade atual $modelo: $velocidade km/h');
  }
}