import 'carro.dart';
import 'moto.dart';
import 'caminhao.dart';

void main() {
  Carro carro = Carro();
  carro.modelo = 'Uno com escada';
  carro.velocidade = 989;
  carro.licenciado = true;
  carro.capacidadeCombustivel = 2;

  carro.acelerar();
  carro.abastecerVeiculo(1);
  carro.abastecerVeiculo(5);
  carro.viajar();

  Moto moto = Moto();
  moto.modelo = 'CG 160';
  moto.velocidade = 0;
  moto.licenciado = false;
  moto.partidaEletrica = false;

  moto.verificarLicenciamento();
  moto.darGrau();

  Caminhao caminhao = Caminhao();
  caminhao.modelo = '8.160';
  caminhao.velocidade = 40;
  caminhao.licenciado = true;
  caminhao.capacidadeCarga = 8150;

  caminhao.frear();
  caminhao.carregarCaminhao(5000);
  caminhao.carregarCaminhao(4000);
  caminhao.iniciarEntrega();
}