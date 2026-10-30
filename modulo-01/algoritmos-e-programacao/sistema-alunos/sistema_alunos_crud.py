import os

# CORES (Códigos de escape ANSI armazenados em variáveis do tipo string para estilizar o texto do terminal)
CYAN = "\033[96m"
GREEN = "\033[92m"
BLUE = "\033[94m"
YELLOW = "\033[93m"
RED = "\033[91m"
GRAY = "\033[90m"
MAGENTA = "\033[95m"
WHITE = "\033[97m"
RESET = "\033[0m"

ARQUIVO = "alunos.txt"

def separador(char: str = "=", largura: int = 45):
    print(f"{CYAN}{char * largura}{RESET}")

def exibir_menu():
    separador()
    print(f"{CYAN}{'SISTEMA DE ALUNOS':^45}{RESET}")
    separador()

    print(f"{GREEN}1 - Cadastrar aluno{RESET}")
    print(f"{BLUE}2 - Listar alunos{RESET}")
    print(f"{YELLOW}3 - Alterar aluno{RESET}")
    print(f"{RED}4 - Excluir aluno{RESET}")
    print(f"{GRAY}0 - Sair{RESET}")
    print()

def cadastrar_aluno():
    print(f"\n{YELLOW}===== CADASTRAR ALUNO ====={RESET}")

    nome = input("Digite o nome do aluno: ").strip()

    while True:
        try:
            nota = float(input("Digite a nota do aluno: ").strip())
            break
        except ValueError:
            print(f"{RED}Digite apenas números.{RESET}")

    with open(ARQUIVO, "a", encoding="utf-8") as arquivo:
        arquivo.write(f"{nome};{nota}\n")

    print(f"{GREEN}Aluno cadastrado com sucesso!{RESET}")

def listar_alunos():
    if not os.path.exists(ARQUIVO):
        print(f"{RED}Nenhum aluno cadastrado ainda.{RESET}")
        return

    with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
        linhas = arquivo.readlines()

    if not linhas:
        print(f"{YELLOW}Nenhum aluno cadastrado ainda.{RESET}")
        return

    separador()
    print(f"{CYAN}{'ALUNOS CADASTRADOS':^45}{RESET}")
    separador()

    print(f"\n{WHITE}{'NOME':<25} {'NOTA':>6}   STATUS{RESET}")
    print("-" * 45)

    for linha in linhas:
        linha = linha.strip()

        if linha:
            nome, nota = linha.split(";")
            nota = float(nota)

            status = "APROVADO" if nota >= 6 else "REPROVADO"
            cor_status = GREEN if nota >= 6 else RED

            print(
                f"{WHITE}{nome:<25}{RESET} "
                f"{cor_status}{nota:>6.1f}{RESET}   "
                f"{cor_status}{status}{RESET}"
            )

    print()
    separador()

def alterar_aluno():
    if not os.path.exists(ARQUIVO):
        print(f"{RED}Nenhum aluno cadastrado ainda.{RESET}")
        return

    print(f"\n{CYAN}===== ALTERAR ALUNO ====={RESET}")

    nome_busca = input("Digite o nome do aluno que deseja alterar: ").strip()

    with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
        linhas = arquivo.readlines()

    alunos = []
    encontrado = False

    for linha in linhas:
        linha = linha.strip()

        if linha:
            alunos.append(linha)

    novos_alunos = []

    for registro in alunos:
        nome, nota = registro.split(";")

        if nome.lower() == nome_busca.lower():
            encontrado = True

            novo_nome = input("Digite o novo nome: ").strip()

            while True:
                try:
                    nova_nota = float(input("Digite a nova nota: ").strip())
                    break
                except ValueError:
                    print(f"{RED}Digite apenas números.{RESET}")

            novos_alunos.append(f"{novo_nome};{nova_nota}")
        else:
            novos_alunos.append(registro)

    if not encontrado:
        print(f"{RED}Aluno não encontrado.{RESET}")
        return

    with open(ARQUIVO, "w", encoding="utf-8") as arquivo:
        for aluno in novos_alunos:
            arquivo.write(f"{aluno}\n")

    print(f"{GREEN}Aluno alteredo com sucesso!{RESET}")

def excluir_aluno():
    if not os.path.exists(ARQUIVO):
        print(f"{RED}Nenhum aluno cadastrado ainda.{RESET}")
        return

    print(f"\n{RED}===== EXCLUIR ALUNO ====={RESET}")

    nome_busca = input("Digite o nome do aluno que deseja excluir: ").strip()

    with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
        linhas = arquivo.readlines()

    alunos = []
    for linha in linhas:
        linha = linha.strip()

        if linha:
            alunos.append(linha)

    novos_alunos = []
    encontrado = False

    for registro in alunos:
        nome, nota = registro.split(";")

        if nome.lower() == nome_busca.lower():
            encontrado = True
        else:
            novos_alunos.append(registro)

    if not encontrado:
        print(f"{RED}Aluno não encontrado.{RESET}")
        return

    with open(ARQUIVO, "w", encoding="utf-8") as arquivo:
        for aluno in novos_alunos:
            arquivo.write(f"{aluno}\n")

    print(f"{GREEN}Aluno excluído com sucesso!{RESET}")

while True:
    exibir_menu()

    opcao = input(f"{MAGENTA}Escolha uma opção: {RESET}").strip()

    if opcao == "1":
        cadastrar_aluno()

    elif opcao == "2":
        listar_alunos()

    elif opcao == "3":
        alterar_aluno()

    elif opcao == "4":
        excluir_aluno()

    elif opcao == "0":
        print(f"{YELLOW}Encerrando o sistema. Até logo!{RESET}")
        break

    else:
        print(f"{RED}Opção inválida. Tente novamente.{RESET}")