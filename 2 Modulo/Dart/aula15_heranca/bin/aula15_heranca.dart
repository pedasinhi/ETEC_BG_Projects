import 'arqueiro.dart';
import 'mago.dart';
void main(List<String> arguments) {
  Mago m1 = Mago();
  m1.nome = 'Marcião';
  Arqueiro arq1 = Arqueiro();
  arq1.nome = 'Legolas';
   Arqueiro arq2 = Arqueiro();
  arq2.nome = 'Boi Tatá';
   Arqueiro arq3 = Arqueiro();
  arq3.nome = 'Cabelo';


  m1.socaFraco(arq2);
  m1.bolaDeFogo([arq1, arq2, arq3]);
}
