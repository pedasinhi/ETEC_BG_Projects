import 'dart:async';

import 'personagem.dart';

class Arqueiro extends Personagem {
  int precisao = 100;
  int nFlechasTotal = 5;
  int nFlechasAtual = 5;
  void flechaEnvenenada(Personagem inimigo){
    if(nFlechasAtual > 0 && precisao > inimigo.agilidade){
      Timer.periodic(Duration(seconds: 20),(timer){
        int dano = forca - inimigo.defesa;
        inimigo.vidaAtual -= dano; 
        if(inimigo.vidaAtual < 0){
          print ('${inimigo.nome} morreu');
          timer.cancel(); //encerra o timer
        }
      }); // Timer.periodic
    }
  }
}
