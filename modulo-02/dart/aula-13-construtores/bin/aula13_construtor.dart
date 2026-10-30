import 'carro.dart';
void main() {
  Carro carro1 = Carro("Marea turbo", 290, cor: "verde feio" );
  Carro carro2 = Carro("Saveiro Rebaixada", 231, placa: "aaa1a322",  cor: 'prata');
  Carro carro3 = Carro("Uno com Escada", 999, cor: "branco com adesivo da vivo");
  Carro carro4 = Carro("Golf Sapão", 189, placa: "abc9d087", cor: "a cor do pecado");
  print("Placa: ${carro1.placa}, cor: ${carro1.cor}");
  print("Placa: ${carro2.placa}, cor: ${carro2.cor}");
  print("Placa: ${carro3.placa}, cor: ${carro3.cor}");
  print("Placa: ${carro4.placa}, cor: ${carro4.cor}");
  carro1.ligar();
  carro1.acelerar(259);

}
