import 'personagem.dart';

class Mago extends Personagem {
  //como se todos atributos e métodos de Personagem estivessem aqui
  int manaTotal = 100;
  int manaAtual = 100;
  int inteligencia = 100;

  void bolaDeFogo(List<Personagem> inimigos){
    for (var inimigo in inimigos) {
      int dano = inteligencia - inimigo.defesa;
      dano = dano < 0 ? 0 : dano;
      inimigo.vidaAtual -= dano;
      if(inimigo.vidaAtual < 0){
        print('${inimigo.nome} morreu');
      }
    }
  }
}
