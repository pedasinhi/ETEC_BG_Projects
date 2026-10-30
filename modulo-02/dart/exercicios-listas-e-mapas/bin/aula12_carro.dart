import 'carro.dart'; //arquivo

void main(List<String> arguments) {
  //instanciem uma classe carro/unidade
  Carro c1 = Carro(); //c1 é o nme da instancia ou objeto

  //atribua um modelo

  c1.modelo = 'lancer';
  c1.veloMax = 230;

  //acelere sem ligar o carro
  c1.acelerar(50);
  print("velocidade atual: ${c1.veloAtual}");

  //ligue
  c1.ligar();

  //acelere sem passar a velo max
  c1.acelerar(100);
  print("velocidade atual: ${c1.veloAtual}");

  //acelere ultrapassando a velo max
  c1.acelerar(300);
  print("velocidade atual: ${c1.veloAtual}");

  //freie sem chegar no zero
  c1.frear(100);
  print("velocidade atual: ${c1.veloAtual}");

  //freie uma qtd maior que a veloAtual
  c1.frear(300);
  print("velocidade atual: ${c1.veloAtual}");
}


// deixar a velocidade atual privada para nao dar erro. ENCAPSULAMENTO
// método construtor obrigando informar a velocidade maxima. CONSTRUTOR
