//abstrair as 'coisas' do mundo real para o codigo
//em outras palavras: modelar através de classes
class ContaCorrente {
  //atributos
  double saldo = 0;
  late String titular; // inic. depois
  int agencia = 123;

  //metodos
  void depositar(double valor) {
    saldo = saldo + valor;  
  }

  void sacar(double valor) {
    if (saldo >= valor)
      saldo -= valor;
    else
      print("Saldo indisponivel");
  }

  void transferir(double valor, ContaCorrente contaDest) {
    if (saldo >= valor) {
      contaDest.saldo += valor;
      saldo -= valor;
    } else
      print("Saldo indisponivel");
  }

  void extrato() {
    print("Saldo de $titular é: $saldo");
  }
}
