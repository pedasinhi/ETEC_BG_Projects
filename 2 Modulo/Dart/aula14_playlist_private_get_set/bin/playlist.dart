//uma classe com
//atributos: List<String> de músicas, id da música atual
//métodos: próx musica, música anterior, música aleatóri
//toda vez que trocar de música, exibir o nome da música atual

class Playlist{

  List<String> musicas = [];
  int _idMusicaAtual = 0; // _ Indica que o atributo é privado

  //retorna um atributo privado, mas não permite alterar o valor do atributo
  get idMusicaAtual{
    return _idMusicaAtual;
  }

  Playlist(this.musicas){
    if(musicas.isEmpty){
      throw Exception("Playlist Vazia/Sem Músicas");
    }
    print(musicas[_idMusicaAtual]);
  }

  void proxMusica(){
    _idMusicaAtual++;
    if (_idMusicaAtual >= musicas.length){
      _idMusicaAtual=0;
    }
    print(musicas[_idMusicaAtual]);
  }

  void musicAnterior(){
    _idMusicaAtual--;
    if (_idMusicaAtual < 0){
      _idMusicaAtual = musicas.length -1;
    }
    print(musicas[_idMusicaAtual]);
  }
}