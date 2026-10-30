void main() {
  //exemplo1();
  //exemplo2();
  //exemplo3();
  //exemplo4();
  //exemplo5();
  //exemplo6();
  //exemplo7();
  exemplo8();
}

void exemplo8() {
  //1 - Dada uma lista de números aleatórios, crie uma outra lista, mas com esses números em ordem crescente

 List<int> numeros = [12, 4, 7, 2, 9, 15];

  for (int i = 0; i < numeros.length; i++) {
    for (int j = i + 1; j < numeros.length; j++) {
      if (numeros[i] > numeros[j]) {
        int temp = numeros[i];
        numeros[i] = numeros[j];
        numeros[j] = temp;
      }
    }
  }

  print(numeros);
}

void exemplo1() {
  List<int> itens = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int i = 9; i >= 0; i--) {
    print(itens[i]);
  }
}

void exemplo2() {
  // Crie uma lista de strings com nomes e imprima apenas o primeiro e o último nome.

  List<String> nomes = ['Carlos', 'Matheus', 'Robson'];

  print(nomes.first);
  print(nomes.last);
}

void exemplo3() {
  //Crie uma lista de números e imprima apenas os números pares.

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var numerosPar in numeros) {
    if (numerosPar % 2 == 0) {
      print(numerosPar);
    }
  }
}

void exemplo4() {
  List<double> numeros = [1, 2, 3];
  double soma = 0;

  for (double element in numeros) {
    soma += element;
  }
  soma /= 3;
  print(soma);
}

void exemplo5() {
  // 5. Dada uma lista de números, crie uma nova lista apenas com os números multiplicados por 2.

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int multDois in numeros) {
    if (multDois % 2 == 0) {
      print(multDois * 2);
    }
  }
}

void exemplo6() {
  List<int> numeros = [42, 17, 88, 9, 73, 55, 31, 96, 4, 21];
  int menor = numeros[0];
  for (int numero in numeros) {
    if (numero < menor) {
      menor = numero;
    }
  }
}

void exemplo7() {
  //. Dada uma lista de nomes, crie uma lista com os mesmos nomes, mas em ordem invertida

  List<String> nomes = ['Carlos', 'Matheus', 'Robson'];
  String resultado = "";
  for (int i = nomes.length - 1; i >= 0; i--) {
    resultado = nomes[i];
    print(resultado);
  }
}
