import 'conta_corrente.dart';

void main() {
  //instancia(criar) a c
  ContaCorrente c1 = ContaCorrente();
  c1.titular = "Cidade";
  c1.extrato();
  c1.depositar(500);
  c1.extrato();

  ContaCorrente c2 = ContaCorrente();
  c2.titular = "Ricardo";

  c1.transferir(80, c2);
  c1.extrato();
  c2.extrato();
}
