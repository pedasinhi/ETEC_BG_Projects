import "playlist.dart";

void main(List<String> arguments){
  List<String> musicas = [];
  musicas.add("O Milagre da Vida!");
  musicas.add("A Esperança que nos dá Coragem");
  musicas.add("O Livro de Deus é um Tesouro");
  musicas.add("Eu quero!");
  Playlist pl = Playlist(musicas);
  pl.proxMusica();
  pl.proxMusica();
  pl.musicAnterior();
}