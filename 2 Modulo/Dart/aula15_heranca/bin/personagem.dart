class Personagem {
  late String nome;
  late int vidaTotal = 200;
  late int vidaAtual = 200;
  late int agilidade = 50;
  int xp = 0;
  int nivel = 1;
  late int forca = 100;
  late int defesa = 80;

  void socaFraco(Personagem inimigo){
    int dano = forca - inimigo.defesa;
    dano = dano < 0 ? 0 : dano;
    inimigo.vidaAtual -= dano;

    if (inimigo.vidaAtual <= 0) {
      print('Inimigo Morreu');
    }
  }
}