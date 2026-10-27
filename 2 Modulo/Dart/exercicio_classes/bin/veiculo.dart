class Veiculo {
  late String modelo;
  late int velocidade;
  late bool licenciado;

  void verificarLicenciamento(){
    if (licenciado) {
      print('O veículo $modelo está licenciado');
    }
    else {
      print('O veículo $modelo não está licenciado');
    }
  }

  void acelerar(){
    velocidade += 10;
    print('Velocidade atual do $modelo: $velocidade km/h');
  }

  void frear() {
    velocidade -= 10;

    if (velocidade < 0) {
      velocidade = 0;
    }
    print('Velocidade atual $modelo: $velocidade km/h');
  }
}