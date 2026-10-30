JavaScript - Objeto Math

O objeto Math (com inicial maiúscula) retorna funções matemáticas específicas.

A seguir, os métdos mais utilizados:

-Math.PI -- retorna o valor 3,14159

-Math.PI -- retorna a raiz quadrada de “valor”

-Math.pow(base,expoente) -- retorna a exponenciação 

-Math.abs(valor) -- retorna o valor absoluto (sem sinal) de “valor”

-Math.ceil(valor) -- retorna o próximo valor inteiro MAIOR QUE o valor. 
Exemplo: Math.ceil(24.60) -- retorna 25 

-Math.floor(valor) -- retorna o próximo valor inteiro MENOR QUE o valor. 
Exemplo: Math.ceil(24.60) -- retorna 24 

-Math.max(valor1,valor2) -- compara os dois valores e retorna o de MAIOR valor. 

-Math.min(valor1,valor2) -- compara os dois valores e retorna o de MENOR valor. 

-Math.random() -- retorna um número randômico entre 0 e 1.
Este método é utilizado para criação de scripts com funções aleatórias, imagens do dia, link do dia, etc., onde há necessidade de alterações ou execução de um procedimento de forma variada.

-Math.round(valor) -- arredonda um número para o valor inteiro mais próximo. Se a parte fracionária for >=5, então, arredonda para o maior inteiro mais próximo, senão, arredonda para o menor inteiro mais próximo.
Exemplos: Math.roundl(24.60) -- retorna 25.
                  Math.roundl(24.40) --retorna 24.

 
Algumas funções do JavaScript (objeto window)

isNaN() – confere se o valor passado entre os parênteses NÃO é numérico

parseInt() – converte o valor string passado entre os parênteses em número inteiro (desde que o valor passado não seja letra ou símbolo)

parseFloat() - converte o valor string passado entre os parênteses em número decimal, ou seja, reconhecendo casas decimais (desde que o valor passado não seja letra ou símbolo)

Number(conteúdo a ser convertido em número)

eval() – troca os tipos. Se o valor passado entre os parênteses for numérico, ele converte para string. Se o valor passado for string ele converte para numérico

setInterval(“nome_da_função()”, milessegundos) – define intervalos de tempo para execução de determinado código

clearInterval(“identificador da chamada ao setInterval”) – interrompe e execução deu uma função setInterval() acessada por meio de uma ID. Exemplo:
var inicia = window.setInterval(“Mostrar()”, 2000);

Nesse script, a variável “inicia” é o ID do setInterval() que faz com que a função chamada Mostrar(), seja executada de 2 em 2 segundos ininterruptamente.

window.clearInterval(inicia);

Esse script interrompe o funcionamento do setInterval() definido na variável (ID) chamada inicia. 


Intervalo de datas de cada signo:

		Capricornio: de 22 dezembro a 20 janeiro
		Aquario: de 21 janeiro a 19 fevereiro
		Peixes: de 20 fevereiro a 20 marÃ§o		
		Aries: de 21 marco a 20 abril
		Touro: de 21 abril a 20 maio
		Gemeos: de 21 maio a 20 junho
		Cancer: de 21 junho a 22 julho
		Leao: de 23 julho a 22 agosto
		Virgem: de 23 agosto a 22 setembro
		Libra: de 23 setembro a 22 outubro
		Escorpiao: de 23 outubro a 21 novembro
		Sagitario: de 22 novembro a 21 dezembro


